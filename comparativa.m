clear
clc
%Soluclon analitica
x = [0:0.1:0.5];
y = exp(x.^2);
plot(x,y, 'k:',LineWidth=3);
title("solucion analitica vs Runge–Kutta EDO");
xlabel('X'); ylabel('Y'); hold on;
%Runge–Kutta
x1 = [0:0.1:0.5];
y1 = [1 1.010050167	1.04050335	1.092108732	1.166050317	1.263983199];
plot(x1,y1, 'b--',LineWidth=3);
legend("Analitica", "Runge–Kutta");
