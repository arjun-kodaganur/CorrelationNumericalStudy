from data_model import parameters
import numpy as np

def velocity(p:parameters):
    v_para = p.v_para
    v_perp = p.v_perp

    if v_perp.ndim == 1:
        v_perp = v_perp[None, None, :]

    if v_para.ndim == 2:
        v_para = v_para[:,:,None]

    v_para,v_perp = np.broadcast_arrays(v_para, v_perp)
    p.v= np.sqrt(np.square(v_perp)+np.square(v_para))
    return p.v,v_para,v_perp

def B_radial(p:parameters):
    r1, theta1 = np.meshgrid(p.r, p.theta,indexing='ij')
    rsintheta = r1*np.sin(theta1)
    p.Br = -((rsintheta*p.B0)/(p.q_safetyfactor*p.R))
    return p.Br

def pitch(p:parameters):
    v_para = p.v_para
    v_perp = p.v_perp

    if v_perp.ndim == 1:
        v_perp = v_perp[None, None, :]

    if v_para.ndim == 2:
        v_para = v_para[:,:,None]

    v_para,v_perp = np.broadcast_arrays(v_para, v_perp)

    p.pitch = (v_para/p.v)

    p.w0_cyc = (p.q*p.B0)/p.m

    p.pitch_g = ((p.n_phi*p.v)/(p.R0*p.w0_cyc))

    p.pitch_plus = -((1-np.sqrt(1+(3*np.square(p.pitch_g))))/(3*p.pitch_g))

    p.pitch_minus = -((1+np.sqrt(1+(3*np.square(p.pitch_g))))/(3*p.pitch_g))

def ddphase(p:parameters):
    v_perp = p.v_perp
    if v_perp.ndim == 1:
        v_perp = v_perp[None, None, :]
    R = p.R[:,:,None]
    R,v_perp = np.broadcast_arrays(R, v_perp)
    Br = p.Br[:,:,None]
    Br,v_perp = np.broadcast_arrays(Br, v_perp)
    B = p.B[:,:,None]
    B,v_perp = np.broadcast_arrays(B, v_perp)

    K = (-3*p.n_phi)/2
    p.A = (K*np.square(p.v))
    p.X = ((p.pitch-p.pitch_minus)*(p.pitch-p.pitch_plus))
    p.Br_over_B_3D = (Br/B)
    p.ddnu = (((p.A/np.square(R))*p.Br_over_B_3D)*p.X)

def ddt_Br_B(p:parameters):
    r1, theta1 = np.meshgrid(p.r, p.theta,indexing='ij')
    ddtheta_Br_over_B = (-(r1*np.cos(theta1))/(p.R0*p.q_safetyfactor))
    Btheta = ((r1*p.B0)/(p.q_safetyfactor*p.R))
    Btheta_over_B = (Btheta/p.B)

    v_para = p.v_para
    v = p.v

    if v_para.ndim == 2:
        v_para = v_para[:,:,None]
    
    Btheta_over_B = Btheta_over_B[:,:,None]
    ddtheta_Br_over_B = ddtheta_Br_over_B[:,:,None]
    r1 = r1[:,:,None]

    v,v_para = np.broadcast_arrays(v, v_para)
    v,Btheta_over_B = np.broadcast_arrays(v, Btheta_over_B)
    v,ddtheta_Br_over_B = np.broadcast_arrays(v, ddtheta_Br_over_B)
    v,r1 = np.broadcast_arrays(v, r1)

    p.ddt_Br_over_B = (((v_para*Btheta_over_B)/r1)*ddtheta_Br_over_B)

def dddphase(p:parameters):
    v_perp = p.v_perp
    if v_perp.ndim == 1:
        v_perp = v_perp[None, None, :]

    R = p.R[:,:,None]

    R,v_perp = np.broadcast_arrays(R, v_perp)

    ddt_Br_over_B = p.ddt_Br_over_B

    if ddt_Br_over_B.ndim == 2:
        ddt_Br_over_B = ddt_Br_over_B[:,:,None]

    ddt_Br_over_B,v_perp = np.broadcast_arrays(ddt_Br_over_B, v_perp)

    p.vpara_0 = ((p.w_em-p.w0_cyc)*p.R0)/p.n_phi
    p.v0_3D =  np.sqrt((np.square(v_perp)+np.square(p.vpara_0)))
    
    p.pitch_0 = (p.vpara_0/p.v0_3D)

    first_term = -2*(((p.A*p.X*p.v*p.pitch)*np.square(p.Br_over_B_3D))/np.power(R,3))
    second_term = ((((p.R0*p.A*p.v)/np.power(R,4))*(p.pitch+(1/(3*p.pitch_g))))*((1-np.square(p.pitch_0))*np.square(p.Br_over_B_3D)))
    third_term = (((p.A*p.X)/np.square(R))*ddt_Br_over_B)

    p.dddnu = (first_term+second_term+third_term)

def phase_function_variables(p:parameters):
    velocity(p)
    B_radial(p)
    pitch(p)
    ddphase(p)
    ddt_Br_B(p)
    dddphase(p)

    return p.ddnu,p.dddnu