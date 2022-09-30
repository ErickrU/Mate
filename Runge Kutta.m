clc
clear

output_precision(10)


a = 0
b = 0.4
c = 0

h0 = 0.1
y0 = 1
x0 = 0
f = 2

for i = a:h0:b

x1 = x0 + h0
k1 = h0 * (f * (x0*y0))
k2 = h0 * f*(x0+(1/2*h0)* (y0+(1/2*k1)))
k3 = h0 * f*(x0+(1/2*h0)* (y0+(1/2*k2)))
k4 = h0 * f*((x0+h0)*(y0+k3))

y0 = y0 + 1/6 * (k1+(2*k2)+(2*k3)+k4)

x0 = x1
reultados(c+1) = y0;
c = c +1

end
