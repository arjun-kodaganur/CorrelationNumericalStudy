from data_model import parameters
import numpy as np
import pandas as pd

def datasave(p:parameters):
    r = p.r[:,None,None]
    theta = p.theta[None,:,None]

    v_perp = p.v_perp
    if v_perp.ndim == 1:
        v_perp = v_perp[None, None, :]

    r,theta,v_perp = np.broadcast_arrays(r, theta, v_perp)

    v_para = p.v_para
    if v_para.ndim == 2:
        v_para = v_para[:,:,None]
    
    v_para,v_perp = np.broadcast_arrays(v_para, v_perp)

    B = p.B[:,:,None]
    B,v_perp = np.broadcast_arrays(B, v_perp)

    w_cyc = p.w_cyc[:,:,None]
    w_cyc,v_perp = np.broadcast_arrays(w_cyc, v_perp)

    k_para = p.k_para[:,:,None]
    k_para,v_perp = np.broadcast_arrays(k_para, v_perp)

    """tb = p.tb[:,:,None]
    tb,v_perp = np.broadcast_arrays(tb, v_perp)"""

    v_perp_old = v_perp-p.del_v_perp


    data = np.column_stack([
        r.ravel(), theta.ravel(), v_perp_old.ravel(),
        v_para.ravel(), B.ravel(), w_cyc.ravel(), k_para.ravel(), p.ddnu_br.ravel(),
        p.dddnu_br.ravel(), p.delnu_br.ravel(), p.delt_br.ravel(), p.De.ravel(), p.tb.ravel(),
        p.delmu.ravel(), p.v_perp.ravel(), p.ddnu_ar.ravel(), p.dddnu_ar.ravel(), p.delnu_ar.ravel(),p.delt_ar.ravel(),
        p.deldelnu.ravel(),p.tau_2nd_order_real.ravel(),p.tau_2nd_order_imag.ravel(),p.tau_3rd_order_real.ravel(),p.tau_3rd_order_imag.ravel(),
        p.tau_3rd_order_SR_real.ravel(),p.tau_3rd_order_SR_imag.ravel(),p.pitch.ravel(),p.pitch_plus.ravel(),p.pitch_minus.ravel()
    ])

    columns = ['r', 'theta', 'v_perp before resonance', 'v_para', 'B', 'w_cyc', 'k_para', 'ddnu before resonance'
               , 'dddnu before resonance', 'del nu before resonance', 'del t before resonance', 'De', 'tb', 'del mu', 'v_perp after resonance'
               , 'ddnu after resonance', 'dddnu after resonance', 'del nu after resonance','del t after resonance','del del nu','Second order tau real'
               ,'Second order tau imag','Third order tau real','Third order tau imag','Third order SR tau real','Third order SR tau imag','Pitch','Pitch Plus','Pitch Minus']
    df = pd.DataFrame(data, columns=columns)

    df.to_csv('data.csv', index=False)