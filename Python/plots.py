import matplotlib.pyplot as plt
import numpy as np

def plot_at_xy(data,x_vals,y_vals,z_vals,x_target, z_target):
    # find nearest indices
    ix = np.argmin(np.abs(x_vals - x_target))
    iz = np.argmin(np.abs(z_vals - z_target))

    # extract line along z
    line = data[ix,:,iz]

    # plot
    plt.figure()
    plt.plot(y_vals, line)
    plt.xlabel("Variable")
    plt.ylabel("Value")
    plt.title(f"x={x_vals[ix]:.3f}, z={z_vals[iz]:.3f}")
    plt.grid()
    plt.show()


