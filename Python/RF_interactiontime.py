from data_model import parameters
import numpy as np
from scipy import special
import math

def second_order_interaction_time(p:parameters):
    ddnu_br =  p.ddnu_br.astype(complex)
    out_arr = np.zeros_like(p.ddnu_br, dtype=np.complex128) + 1
    p.tau_2nd_order = np.abs(np.sqrt(np.divide((2*math.pi*1j),ddnu_br, out=out_arr, where=p.ddnu_br!=0)))

def third_order_interaction_time(p:parameters):
    u = -(np.square(p.ddnu_br)/((2**(2/3)) * np.cbrt(p.dddnu_br)**4))
    ai, aip, bi, bip = special.airy(u)
    p.tau_3rd_order = np.abs((2 * math.pi) * np.cbrt(2 / p.dddnu_br) * ai)

def interaction_time(p:parameters):
    second_order_interaction_time(p)
    third_order_interaction_time(p)

