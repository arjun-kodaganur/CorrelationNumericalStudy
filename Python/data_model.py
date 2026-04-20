from dataclasses import dataclass
import numpy as np

@dataclass
class parameters:
    R0: float
    a: float
    B0: float
    m: float
    q: float
    n_phi: int
    w_em: float 
    q_safetyfactor: int
    P_perp:float
    ns:float
    w0_cyc:float = None
    vpara_0:float = None
    
    r: np.ndarray = None
    theta: np.ndarray = None
    R: np.ndarray = None
    B: np.ndarray = None
    w_cyc: np.ndarray = None
    k_para: np.ndarray = None
    v_para: np.ndarray = None
    v_perp: np.ndarray = None
    v_perp_index: np.ndarray = None
    v: np.ndarray = None
    v0_3D: np.ndarray = None
    Br: np.ndarray = None
    pitch: np.ndarray = None
    pitch_g: np.ndarray = None
    pitch_plus: np.ndarray = None
    pitch_minus: np.ndarray = None
    A: np.ndarray = None
    X: np.ndarray = None
    Br_over_B_3D: np.ndarray = None
    ddnu: np.ndarray = None
    pitch_0: np.ndarray = None
    ddt_Br_over_B: np.ndarray = None
    dddnu: np.ndarray = None

    ddnu_br: np.ndarray = None
    dddnu_br: np.ndarray = None
    ddnu_ar: np.ndarray = None
    dddnu_ar: np.ndarray = None

    De: np.ndarray = None
    delmu: np.ndarray = None
    tb: np.ndarray = None
    del_v_perp:np.ndarray = None

    delt: np.ndarray = None
    delnu: np.ndarray = None
    delt_br: np.ndarray = None
    delnu_br: np.ndarray = None
    delt_ar: np.ndarray = None
    delnu_ar: np.ndarray = None

    deldelnu:np.ndarray = None

    tau_2nd_order_real:np.ndarray = None
    tau_2nd_order_imag:np.ndarray = None
    tau_3rd_order_real:np.ndarray = None
    tau_3rd_order_imag:np.ndarray = None
    tau_3rd_order_SR_real:np.ndarray = None
    tau_3rd_order_SR_imag:np.ndarray = None