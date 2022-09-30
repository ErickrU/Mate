clear
clc
%Soluclon analitica
x = [0:0.1:1];
y = exp(-x.^2);
plot(x,y, 'k:',LineWidth=3);
title("solucion analitica vs Euler EDO");
xlabel('X'); ylabel('Y'); hold on;
%Euler
x1 = [0:0.1:1];
y1 = [1 0.9800	0.9408	0.88435	0.8136	0.73224	0.64437	0.55416	0.4655	0.38171	0.30537	];
plot(x1,y1, 'b--',LineWidth=3);
legend("Analitica", "Euler");
