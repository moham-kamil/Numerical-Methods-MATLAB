% SIMPSON 1/3 RULE

% Name : Mohamed Mustafa Kamil , ID : 2180205565

% Define the function to be integrated
fun = @(x) 1 ./ (1 + exp(x));

% Define integration limits
a = -1;
b = 1;

% Number of intervals (even number)
n = 9;

% Step size
h = (b - a) / n;

% Compute the sum of function values at the even and odd points
x = linspace(a, b, n+1);
y = fun(x);
evens = sum(y(2:2:end-2));
odds = sum(y(3:2:end-1));

% Simpson's 1/3 rule
I = (h / 3) * (y(1) + 4 * odds + 2 * evens + y(end));

disp(['Approximate integral using Simpson''s 1/3 rule: ', num2str(I)]);
