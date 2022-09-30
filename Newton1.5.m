clear all
clc

f = @(x)x.^2+x-1;
f1 = @(x)2*x+1;

x0 = 1.5;

tolerancia = 0.0001;
contador = 1;
error = abs(2*tolerancia);
while(error >= tolerancia)
	raiz(contador) = x0;
	x1 = (x0)-(f(x0)/f1(x0));
	error = abs(x1-x0);
	x0 = x1;
	contador = contador +1;
end

x = -10:0.1:10;
y = x.^2+x-1;
plot(x, y);
set (gca, "xaxislocation", "origin")
set (gca, "yaxislocation", "origin")
xlabel('X'); ylabel('Y'); hold on;
title("Newton Raphson");

xR = [ 2 1.5000,  0.8125,  0.6324,  0.6181 ];
yR = 0;
plot(xR, yR, '.', 'markersize', 36);

