import numpy as np
import matplotlib.pyplot as plt

n = 10000
T = 1.
times = np.linspace(0., T, n)
dt = times[1] - times[0]

db = np.sqrt(dt) * np.random.normal(size=(n-1,))
bo = np.zeros(shape=(1,))
b = np.concatenate((bo, np.cumsum(db)))
plt.plot(times, b)
plt.show()