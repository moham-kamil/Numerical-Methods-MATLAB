% RUNG-KUTTA METHOD - Fourth Order (MODIFIED CODE)

% Name : Mohamed Mustafa Kamil , ID : 2180205565

% Example : y'= x^2 + y^2  ,  y(0) = 1   ,  y(0.3) = ???
% Exact Solution = 1.43967 (by Wolfram alpha)

clear all;
close all;

% Function
f=@(x,y) x^2+y^2;
% Inputs
disp('Enter Initial Condition :');
x0=input('x0 = ');  % let x0 = 0
y0=input('y0 = ');  % let y0 = 1
x = input( 'Enter value of x at which y is to be calculated : ');  % let x = 0.3
n = input( 'Enter NO. Iterations : ');  % let n = 100
h=(x-x0)/n 

for i=1:n
  k1 = h * f(x0, y0);
  k2 = h * (f((x0+h/2), (y0+k1/2)));
  k3 = h * (f((x0+h/2), (y0+k2/2)));
  k4 = h * (f((x0+h), (y0+k3)));
  k = k1+2*k2+2*k3+k4;
  yn = y0 + 1/6*k;
  x0 = x0+h;
  y0 = yn;
end 

 disp('The Solution of ODE :');
 [yn]

 
 
% Example
 
% Enter Initial Condition :
% x0 = 0
% y0 = 1
% Enter value of x at which y is to be calculated : 0.3
% Enter NO. Iterations : 100
%
% h =
% 
%     0.0030
% 
% The Solution of ODE :
% 
% yn =
% 
%     1.4397
