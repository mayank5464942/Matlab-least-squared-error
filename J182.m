% MATLAB code for finding the best fit line using least squares method.
input = [...
  
0,1.49;
1, 1.52;...
  2, 1.56;...
  5,1.62 ;...
  10, 1.8;...
  20, 2.1;...
  50, 3;
  100,4.32;];

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
