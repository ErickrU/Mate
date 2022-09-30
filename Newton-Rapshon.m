clear all
clc

f = @(x)x.^3+4*x.^2-10;
f1 = @(x)3*(x.^2)+(8*x);

x0 = 2;

tolerancia = 0.0080;
contador = 1;
error = abs(2*tolerancia);
while(error >= tolerancia)
	raiz(contador) = x0;
	x1 = (x0)-(f(x0)/f1(x0));
	error = abs(x1-x0);
	x0 = x1;
	contador = contador +1;
disp(x1);
end

x = -10:0.1:10;
y = x.^3+4*x.^2-10;
plot(x, y);
set (gca, "xaxislocation", "origin")
set (gca, "yaxislocation", "origin")
xlabel('X'); ylabel('Y'); hold on;
title("Newton Raphson");

xR = [  2.0000,  1.5000,  1.3733,  1.3653 ];
yR = 0;
plot(xR, yR, '.', 'markersize', 36);

