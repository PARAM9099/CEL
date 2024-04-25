% Name - Param Patel %
% Assignment 1 %
% DATE - 5/02/2024 %
% ROLL NO - 21BME115D %

x = linspace(-5, 5, 10000);
y1 = x.^2;
y2 = x.^3;
y3 = exp(x);
y4 = sin(x) .* cos(x);

plot(x, y1, 'r', 'linewidth' , 1.5, 'DisplayName', 'y = x^2');
hold on;
plot(x, y2, 'b', 'linewidth' , 1.5, 'DisplayName', 'y = x^3');
plot(x, y3, 'y', 'linewidth' , 1.5, 'DisplayName', 'y = e^x');
plot(x, y4, 'g', 'linewidth' , 1.5, 'DisplayName', 'y = sin(x) * cos(x)');

xlabel('x-axis');
ylabel('y-axis');
legend('show');
title('Plot of Functions');
grid on;
hold off;
