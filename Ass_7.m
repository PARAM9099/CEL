 x = [1, 2, 2.5, 3, 4, 5];
  y = [0, 5, 7, 6.5, 2, 0];
  p = 3.4;
  n = length(x);
  a(1) = y(1);
  for k = 1 : n - 1
  d(k, 1) = (y(k+1) - y(k))/(x(k+1) - x(k));
  end
  for j = 2 : n - 1
 for k = 1 : n - j
 d(k, j) = (d(k+1, j - 1) - d(k, j - 1))/(x(k+j) - x(k));
 end
 end
 
 for j = 2 : n
 a(j) = d(1, j-1);
 end
 Df(1) = 1;
 c(1) = a(1);
 for j = 2 : n
 Df(j) = (p - x(j-1)) .* Df(j-1);
 c(j) = a(j) .* Df(j);
 end
 fp = sum(c);
 
 % Plotting for 1st order
 xx1 = linspace(min(x), max(x), 1000);
 yy1 = zeros(size(xx1));
 for k = 1:length(xx1)
 yy1(k) = y(1) + a(2) * (xx1(k) - x(1));
 end
 
 % Plotting for 2nd order
 xx2 = linspace(min(x), max(x), 1000);
 yy2 = zeros(size(xx2));
 for k = 1:length(xx2)
 yy2(k) = y(1) + a(2) * (xx2(k) - x(1)) + a(3) * (xx2(k) - x(1)) * (xx2(k) - x
(2));
38 end
39 
 % Plotting for 3rd order
 xx3 = linspace(min(x), max(x), 1000);
 yy3 = zeros(size(xx3));
 for k = 1:length(xx3)
 yy3(k) = y(1) + a(2) * (xx3(k) - x(1)) + a(3) * (xx3(k) - x(1)) * (xx3(k) - x
(2)) + a(4) * (xx3(k) - x(1)) * (xx3(k) - x(2)) * (xx3(k) - x(3));
 end
 
 figure;
plot(x, y, '-.', xx1, yy1, 'g', xx2, yy2, 'r', xx3, yy3, 'b');
 xlabel('x');
 ylabel('y');
 title('Newtonian Interpolation');
 legend('Data Points', '1st Order', '2nd Order', '3rd Order');
 grid on;