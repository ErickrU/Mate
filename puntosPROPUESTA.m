clc
clear
a = 0;
b = 1;
x0 = 0; y0 = 1;

h= 0.1;
contador = 0;

f = ((-2)*(x0*y0));

for i = a:h:b
  xn = x0 +h;
  yn = y0 +h.*((-2)*(x0*y0));
  x0 = xn;
  y0 = yn;
  resultados(contador+1) = y0;
  contador = contador + 1;
 end
