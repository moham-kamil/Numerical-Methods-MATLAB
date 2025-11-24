% Power series - Taylor series
% Maclaurin series for sin(x) in 10 terms ONLY

% Name : Mohamed Mustafa Kamil , ID : 2180205565

clc
close all

syms x
y = sin(x);
n = 10; % The number of terms required

% Initialize the sum variable (starts at zero)
TAYLOR_SUM = sym(0); 

% Loop to calculate derivatives and Maclaurin coefficients
for i = 1:n
    
    % Step 1: Evaluate the derivative at x=0
    if i == 1
        % Zero-order derivative (the original function)
        f_prime_at_0 = subs(y, x, 0); 
    else
        % Differentiate the function
        y = diff(y);
        % Evaluate the derivative at x=0
        f_prime_at_0 = subs(y, x, 0);
    end

    % Step 2: Construct the term
    % Term = (f^(i-1)(0) / factorial(i-1)) * x^(i-1)
    term = (f_prime_at_0 / factorial(i - 1)) * x^(i - 1);
    
    % Step 3: Add the term to the cumulative sum
    TAYLOR_SUM = TAYLOR_SUM + term;
    
end

disp('TAYLOR = ');
disp(TAYLOR_SUM);