% SECANT METHOD

% Name : Mohamed Mustafa Kamil , ID : 2180205565

clear all;
close all;

% Initialize inputs
    f=@(x) 3*x^3-5*x-7 ;      % Equation    
    x(1)= 1;                  % 1st initial guess
    x(2)= 2;                  % 2nd initial guess
    eps= 0.5*10^(-2);         % Error - Tolerance
    iter=0;                   % Intialize iteration

% Iteration Loop
    for i=3:100
        x(i) = x(i-1) - (f(x(i-1)))*((x(i-1) - x(i-2))/(f(x(i-1)) - f(x(i-2))));
        iter=iter + 1;

        if abs((x(i)-x(i-1))) < eps      % Stop condition
           break
        end
    end

% Outputs
    Iterations = iter
    Root = x(i)
    
 

