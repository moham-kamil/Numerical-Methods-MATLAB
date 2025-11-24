% RUNG-KUTTA METHOD - Fourth Order (SIMPLE CODE)

% Name : Mohamed Mustafa Kamil , ID : 2180205565

% Example : y'= y - x  ,  y(0) = 2   ,  y(0.1) = ???
% Exact Solution = 2.20517

clear all;
close all;

% Function
f=@(x,y) (y-x);
n=1              % NO. Iterations = 1
% Inputs
disp('Enter Initial Condition :');
x0=input('x0 = ');  % let x0 = 0
y0=input('y0 = ');  % let y0 = 2
x = input( 'Enter value of x at which y is to be calculated : ');  % let x = 0.1

h=(x-x0)/n    % h = (0.1-0)/1 = 0.1

  k1 = h * f(x0, y0);
  k2 = h * (f((x0+h/2), (y0+k1/2)));
  k3 = h * (f((x0+h/2), (y0+k2/2)));
  k4 = h * (f((x0+h), (y0+k3)));
  k = k1+2*k2+2*k3+k4;
  yn = y0 + 1/6*k;

 disp('The Solution of ODE :');
 [yn]


% Example
 
% Enter Initial Condition :
% x0 = 0
% y0 = 2
% Enter value of x at which y is to be calculated : 0.1
% 
% h =
% 
%     0.1000
% 
% The Solution of ODE :
% 
% yn =
% 
%     2.2052