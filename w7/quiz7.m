x = [18,9,-8]
Wxh = -0.1
Whh = 0.5
Why = 0.25
hb = 0.4
yb = 0.0
t =[0.1,-0.1,-0.2]

z0 = Wxh*x(1) + hb
h0 = 1 /(1+exp(-z0))
y0 = Why*h0 + yb
E0 = 1/2 * ((t(1) - y0)^2)

z1 = Wxh*x(2) + hb + Whh*h0
h1 = 1/(1+exp(-z1))
y1 = Why*h1 + yb
E1 = 1/2 * ((t(2)-y1)^2)

z2 = Wxh*x(3) + hb + Whh*h1
h2 = 1/(1+exp(-z2))
y2 = Why*h2+yb
E2 = 1/2 * ((t(3)-y2)^2)
E=E0+E1+E2