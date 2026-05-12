from data_model import parameters
from intialization import initialize
from trapped_particle import trapped_particle_calculation
from phase_function import phase_function_variables
from resonance import resonance_event
from phase_change_calculation import change_in_phase
from save_data import datasave
from RF_interactiontime import interaction_time
from plots import plot_at_xy
import numpy as np
import math

#Constants
p = parameters(
    R0= 3, # Major Radius
    a=1.25, # Max. Minor Radius
    B0= 3.5, # Magnetic field at magnetic axis
    m= 3.343e-27, # Mass of Deuterium ion
    q= 1.602e-19, # Charge of Deuterium ion
    n_phi= 27, # Toroidal Mode number
    w_em=167e6, # Frequency of EM Wave
    q_safetyfactor=2, # Safety Factor
    P_perp= 100e3, # Perpendicular power density
    ns=1e18  # Ion number density
)

# Intialized r and Theta axis
p.r = np.linspace(0.1, p.a , num=100)
p.theta = np.linspace(-math.pi, math.pi , num=100) 

initialize(p) # Calculate R, B, w_cyc, K_para, V_para for all r and theta

# Initialized perpendicular energy axis
p.E_perp = np.linspace(1e3,1e6,num=100)

# Initialized V_perp axis from E_perp
p.v_perp_index = np.sqrt((2*p.E_perp*p.q)/p.m)

p.v_perp = p.v_perp_index

# Trapped or passing particle
trapped_particle_calculation(p)

#______Before updation of change in magnetic moment, i.e. Before resonance______#

p.ddnu_br,p.dddnu_br = phase_function_variables(p) # second and third derivative of phase function

p.delnu_br,p.delt_br = change_in_phase(p) # Change is phase between resonances and time between resonances are obtained.

resonance_event(p) # velocity vectors are updated with obtained S.D of magnetic moment.

#______After updation of change in magnetic moment, i.e. After resonance______#

p.ddnu_ar,p.dddnu_ar = phase_function_variables(p)  # second and third derivative of phase function

p.delnu_ar,p.delt_ar = change_in_phase(p) # Change is phase between resonances and time between resonances are obtained.

p.deldelnu = p.delnu_ar-p.delnu_br # Change in Change in phase between resonances before and after resonance

interaction_time(p) # Interaction time calculation - Second and third order approximation

datasave(p) # saves data in csv format

"""a = 1.25
v_perp = 2e8
plot_at_xy(p.deldelnu,p.r,p.theta,p.v_perp_index,a,v_perp)
plot_at_xy(p.ddnu,p.r,p.theta,p.v_perp_index,a,v_perp)
plot_at_xy(p.dddnu,p.r,p.theta,p.v_perp_index,a,v_perp)
plot_at_xy(p.delmu,p.r,p.theta,p.v_perp_index,a,v_perp)"""