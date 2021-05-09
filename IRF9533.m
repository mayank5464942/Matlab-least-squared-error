% MATLAB code for finding the best fit line using least squares method.
input = [...
  
0,3.26;
1, 3.41;...
  2, 3.42;...
  5,3.8 ;...
  10, 4.2;...
  20, 5.3;...
  50, 8.06;
  100,11.9;];

m = size(input, 1);
n = size(input, 2);
x = input(:,1:n-1);
y = input(:,n);

X = ones(m, n);
X(:,2:n) = input(:,1:n-1);


a = (X' * X) \ (X' * y)
b = X*a
least_square_error = sum((b - y) .^ 2)

% Plot the best fit line.
plot(x, b);
title(sprintf('y = %f + %fx', a(1), a(2)));
xlabel('x');
ylabel('y');

hold on;
% Plot the input data.
plot(x, y, '+r');
hold off;
pause;
