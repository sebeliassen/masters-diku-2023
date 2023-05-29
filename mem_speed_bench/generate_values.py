import numpy as np

# Number of points you want to generate
n_points = 30

# Start and end points
start = 0.001
end = 1.499

# Create the values with linspace first
values = np.linspace(-1, 1, n_points)

# Now adjust the distribution with arctanh
# We also need to normalize the values back to the range between -1 and 1
sharpness = 4
values = np.tanh(sharpness * values)

# Scale the range from [start, end]
mn, mx = values.min(), values.max()
values = (values - mn) / (mx - mn) * 1.498 + start

for value in values:
    print(value)
