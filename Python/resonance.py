from data_model import parameters
import numpy as np
import math

def diffusion_coefficient(p:parameters):
    E = 0.5*(p.m)*(np.square(p.v))
    
    p.De = (2*E*p.P_perp)/(3*p.ns)

def bounce_time(p:parameters):
    p.tb = ((2*math.pi)*(p.R0*p.q_safetyfactor))/(np.abs(p.v_para))

def change_in_magnetic_moment(p:parameters):
    v_perp = p.v_perp[None,None,:]
    tb = p.tb[:,:,None]
    tb,v_perp = np.broadcast_arrays(tb, v_perp)
    B = p.B[:,:,None]
    B,v_perp = np.broadcast_arrays(B, v_perp)

    p.delmu = np.sqrt((2*p.De*tb)/np.square(B))

def update_v_perp(p:parameters):
    v_para = p.v_para[:,:,None]
    v_perp = p.v_perp
    if v_perp.ndim == 1:
        v_perp = v_perp[None, None, :]
    v_para,v_perp = np.broadcast_arrays(v_para, v_perp)
    B = p.B[:,:,None]
    B,v_perp = np.broadcast_arrays(B, v_perp)

    p.del_v_perp = ((p.delmu*B)/(p.m*v_perp))
    p.v_perp = v_perp+p.del_v_perp

def resonance_event(p:parameters):
    diffusion_coefficient(p)
    bounce_time(p)
    change_in_magnetic_moment(p)
    update_v_perp(p)