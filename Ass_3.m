% Name - Param Patel %
% Assignment 3 %
% DATE - 5/02/2024 %
% ROLL NO - 21BME115D %

x = linspace(-2*pi, 2*pi, 150);
y = tan(x);

plot(x, y, 'r', 'LineWidth', 1);
title('Plot of tan(x)');
xlabel('x');
ylabel('tan(x)');
grid on;

xlim([-2*pi, 2*pi]);
ylim([-10, 10]);
