# Import necessary packages
import numpy as np
import matplotlib.pyplot as plt
from scipy import optimize

# Define function to model bridge
def bridge_model(x, y, m, n):
    return np.sqrt(m*(x**2) + n*(y**2))

# Create a grid of points
x = np.arange(-5,5,0.01)
y = np.arange(0,20,0.01)
X,Y = np.meshgrid(x,y)

# Initialize list to store the bridges and the effective lengths
bridges = []
l_eff = []

# Define parameters for the bridge
m = 4
n = 1

# Calculate the bridge model
Z = bridge_model(X,Y,m,n)

# Create a 3D plot of the bridge
fig = plt.figure()
ax = fig.add_subplot(111, projection='3d')
ax.plot_wireframe(X,Y,Z)

# Find the global minimum
res = optimize.minimize(bridge_model, (0,0), args=(m,n))

# Store values in list
bridges.append(res.x)
l_eff.append(res.fun)

# Print results
print('Bridge Points: {}'.format(bridges))
print('Effective Lengths: {}'.format(l_eff))

# Find the local minimum
res = optimize.minimize(bridge_model, (3,13), args=(m,n))

# Store values in list
bridges.append(res.x)
l_eff.append(res.fun)

# Print results
print('Bridge Points: {}'.format(bridges))
print('Effective Lengths: {}'.format(l_eff))

# Plot the bridges and their respective lengths
fig2 = plt.figure()
ax2 = fig2.add_subplot(111, projection='3d')
ax2.plot_wireframe(X,Y,Z)
ax2.scatter(bridges[0][0], bridges[0][1], l_eff[0], c = 'red')
ax2.scatter(bridges[1][0], bridges[1][1], l_eff[1], c = 'blue')
ax2.set_title('Bridge Model')
ax2.set_xlabel('x')
ax2.set_ylabel('y')
ax2.set_zlabel('length')

# Show plot
plt.show()