from data_model import parameters
from intialization import initialize
from phase_function import phase_function_variables
from resonance import resonance_event
from phase_change_calculation import change_in_phase
from save_data import datasave
from RF_interactiontime import interaction_time
from plots import plot_at_xy
import numpy as np
import math


p = parameters(
    R0= 3,
    a=1.25,
    B0= 3.5,
    m= 3.343e-27,
    q= 1.602e-19,
    n_phi= 27,
    w_em=167e6,
    q_safetyfactor=2,
    P_perp= 100e3,
    ns=10e19  
)


p.r = np.linspace(0.1, p.a , num=100)
p.theta = np.linspace(-0.2*math.pi, 0.2*math.pi , num=100) 

initialize(p)

p.v_perp_index = np.linspace(1e6, 2e8 , num=100)

p.v_perp = p.v_perp_index

p.ddnu_br,p.dddnu_br = phase_function_variables(p)

p.delnu_br,p.delt_br = change_in_phase(p)

resonance_event(p)

p.ddnu_ar,p.dddnu_ar = phase_function_variables(p)

p.delnu_ar,p.delt_ar = change_in_phase(p)

p.deldelnu = p.delnu_ar-p.delnu_br

interaction_time(p)

datasave(p)


"""a = 1.25
v_perp = 2e8
plot_at_xy(p.deldelnu,p.r,p.theta,p.v_perp_index,a,v_perp)
plot_at_xy(p.ddnu,p.r,p.theta,p.v_perp_index,a,v_perp)
plot_at_xy(p.dddnu,p.r,p.theta,p.v_perp_index,a,v_perp)
plot_at_xy(p.delmu,p.r,p.theta,p.v_perp_index,a,v_perp)"""
