% Lagrange Interpolation

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

% Prompt the user to enter the x values at which interpolation is needed
m = input('Enter the number of x values for interpolation: ');

% Prompt the user to enter the x values for interpolation
x_val = zeros(1, m);
for i = 1:m
    x_val(i) = input(sprintf('Enter x value for interpolation %d: ', i));
end

% Initialize the interpolated y values
y_val = zeros(1, m);

% Perform Lagrange interpolation
for k = 1:m
    sum = 0;
    for i = 1:n
        product = y(i);
        for j = 1:n
            if j ~= i
                product = product * (x_val(k) - x(j)) / (x(i) - x(j));
            end
        end
        sum = sum + product;
    end
    y_val(k) = sum;
end

% Display interpolated y values
disp('Interpolated y values:');
disp(y_val);

% Show the Lagrange interpolation polynomial
syms X;
polynomial = 0;
for i = 1:n
    term = y(i);
    for j = 1:n
        if j ~= i
            term = term * (X - x(j)) / (x(i) - x(j));
        end
    end
    polynomial = polynomial + term;
end

% Simplify the polynomial
simplified_polynomial = simplify(polynomial);

% Display simplified polynomial
disp('Simplified Lagrange Interpolation Polynomial:');
disp(simplified_polynomial);
