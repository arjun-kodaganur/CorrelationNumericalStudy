from data_model import parameters
import numpy as np
from scipy import special
import math

def second_order_interaction_time(p:parameters):
    ddnu_br =  p.ddnu_br.astype(complex)
    out_arr = np.zeros_like(p.ddnu_br, dtype=np.complex128) + 1
    p.tau_2nd_order_real = np.real(np.sqrt(np.divide((2*math.pi*1j),ddnu_br, out=out_arr, where=p.ddnu_br!=0)))
    p.tau_2nd_order_imag = np.imag(np.sqrt(np.divide((2*math.pi*1j),ddnu_br, out=out_arr, where=p.ddnu_br!=0)))

def third_order_interaction_time(p:parameters):
    u = -(np.square(p.ddnu_br)/((2**(2/3)) * (np.cbrt(p.dddnu_br)**4)))
    ai, aip, bi, bip = special.airy(u)
    p.tau_3rd_order_real = np.real((2 * math.pi) * np.cbrt(2 / p.dddnu_br) * ai)
    p.tau_3rd_order_imag = np.imag((2 * math.pi) * np.cbrt(2 / p.dddnu_br) * ai)

def third_order_single_resonance_interaction_time(p:parameters):
    u = np.zeros_like(p.ddnu_br,dtype=complex)
    u[:,0:50,:] = -(np.square(p.ddnu_br[:,0:50,:])/((2**(2/3)) * (np.cbrt(p.dddnu_br[:,0:50,:]**4)*(-0.5+(1j*np.sqrt(3)/2)))))
    u[:,50:100,:] = -(np.square(p.ddnu_br[:,50:100,:])/((2**(2/3)) * (np.cbrt(p.dddnu_br[:,50:100,:]**4)*(-0.5-(1j*np.sqrt(3)/2)))))

    alpha = (np.power(p.ddnu_br,3))/(3*(np.square(p.dddnu_br)))
    ai, x,y,z = special.airy(u)

    p.tau_3rd_order_SR_real = np.zeros_like(p.ddnu_br)
    p.tau_3rd_order_SR_imag = np.zeros_like(p.ddnu_br)

    p.tau_3rd_order_SR_real[:,0:50,:] = np.real((2 * math.pi) * (np.cbrt(2) / (np.cbrt(p.dddnu_br[:,0:50,:])*(-0.5+(1j*np.sqrt(3)/2))))* np.exp(1j*alpha[:,0:50,:])* ai[:,0:50,:])
    p.tau_3rd_order_SR_imag[:,0:50,:] = np.imag((2 * math.pi) * (np.cbrt(2) / (np.cbrt(p.dddnu_br[:,0:50,:])*(-0.5+(1j*np.sqrt(3)/2))))* np.exp(1j*alpha[:,0:50,:])* ai[:,0:50,:])

    p.tau_3rd_order_SR_real[:,50:100,:] = np.real((2 * math.pi) * (np.cbrt(2) / (np.cbrt(p.dddnu_br[:,50:100,:])*(-0.5-(1j*np.sqrt(3)/2))))* np.exp(1j*alpha[:,50:100,:])* ai[:,50:100,:])
    p.tau_3rd_order_SR_imag[:,50:100,:] = np.imag((2 * math.pi) * (np.cbrt(2) / (np.cbrt(p.dddnu_br[:,50:100,:])*(-0.5-(1j*np.sqrt(3)/2))))* np.exp(1j*alpha[:,50:100,:])* ai[:,50:100,:])



def interaction_time(p:parameters):
    second_order_interaction_time(p)
    third_order_interaction_time(p)
    third_order_single_resonance_interaction_time(p)
