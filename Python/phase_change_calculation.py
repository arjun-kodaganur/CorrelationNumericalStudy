from data_model import parameters
import numpy as np

def delta_time(p:parameters): # Change in time between resonances
    p.delt = -2*(p.ddnu/p.dddnu)

def phase_change(p:parameters):# Change in Phase between resonances
    p.delnu = ((p.ddnu*np.square(p.delt))/2)+((p.dddnu*np.power(p.delt,3))/6)

def change_in_phase(p:parameters):
    delta_time(p)
    phase_change(p)
    return p.delnu,p.delt