from data_model import parameters
import numpy as np

def trapped_particle_calculation(p:parameters):
    v_para = p.v_para
    v_perp = p.v_perp
    B = p.B

    if v_perp.ndim == 1:
        v_perp = v_perp[None, None, :]

    if v_para.ndim == 2:
        v_para = v_para[:,:,None]

    v_para,v_perp = np.broadcast_arrays(v_para, v_perp)

    a = np.square((v_para/v_perp))

    R_min = p.R0-p.r
    B_max = (p.B0*p.R0)/R_min

    B_max = B_max[:, None, None]
    B = B[:,:,None]

    B_max,v_para = np.broadcast_arrays(B_max, v_para)
    B,v_para = np.broadcast_arrays(B, v_para)

    b = (B_max/B)-1

    p.trapped = (a < b).astype(int)
