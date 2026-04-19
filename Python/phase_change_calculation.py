from data_model import parameters
import numpy as np

def delta_time(p:parameters):
    p.delt = -2*(p.ddnu/p.dddnu)

def phase_change(p:parameters):
    p.delnu = ((p.ddnu*np.square(p.delt))/2)+((p.dddnu*np.power(p.delt,3))/6)

def change_in_phase(p:parameters):
    delta_time(p)
    phase_change(p)
    return p.delnu,p.delt