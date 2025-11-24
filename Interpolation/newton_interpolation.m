% Newton Interpolation

% Name : Mohamed Mustafa Kamil , ID : 2180205565

% Prompt the user to enter the number of data points
n = input('Enter the number of data points: ');

% Prompt the user to enter the x coordinates
x = zeros(1, n);
for i = 1:n
    x(i) = input(['Enter x' num2str(i) ': ']);
end

% Prompt the user to enter the y coordinates
y = zeros(1, n);
for i = 1:n
    y(i) = input(['Enter y' num2str(i) ': ']);
end

% Initialize the divided difference table
F = zeros(n, n);

% Filling in the first column of the divided difference table
F(:, 1) = y';

% Calculating the divided differences
for j = 2:n
    for i = 1:n-j+1
        F(i, j) = (F(i+1, j-1) - F(i, j-1)) / (x(i+j-1) - x(i));
    end
end

% Coefficients of the Newton interpolation polynomial
coefficients = F(1, :);
disp('Coefficients of the Newton interpolation polynomial:');
disp(coefficients);


% Simplify the polynomial
simplified_polynomial = simplify(polynomial);
disp('Simplified Polynomial:');
disp(simplified_polynomial);
