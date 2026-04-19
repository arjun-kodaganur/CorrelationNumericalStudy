from data_model import parameters
import numpy as np

def position(p: parameters):
    r1, theta1 = np.meshgrid(p.r, p.theta,indexing='ij')
    p.R = p.R0 + (r1*np.cos(theta1))
    return p.R

def magnetic_field(p:parameters):
    p.B = ((p.B0*p.R0)/p.R)
    return p.B

def cyclotron_frequency(p:parameters):
    p.w_cyc = ((p.q/p.m)*p.B)
    return p.w_cyc

def k_parallel(p:parameters):
    p.k_para = (p.n_phi/p.R)
    return p.k_para

def v_parallel(p:parameters):
    p.v_para = ((p.w_em-p.w_cyc)/p.k_para)
    return p.v_para

    
def initialize(p:parameters):
    position(p)
    magnetic_field(p)
    cyclotron_frequency(p)
    k_parallel(p)
    v_parallel(p)