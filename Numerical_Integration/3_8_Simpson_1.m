% SIMPSON 3/8 RULE for [n=4]

% Name : Mohamed Mustafa Kamil , ID : 2180205565

% Example : Integral of (1/(x^2+1))  ,  on interval [1,2]
% Exact Solution = arctan(2)-arctan(1)= 0.3217505544

clear all;
close all;

% Function
f=@(x) 1/(x.^2+1);
n=4;   

% Inputs
a=input('Enter lower value of integration=');  % let a = 1
b=input('Enter upper value of integration=');  % let b = 2

% Step size
h=(b-a)/(n-1);

x1=a+h;
x2=a+2*h;

% Proccesing
I=3.0*h*(f(a)+f(b)+3.0*(f(x1)+f(x2)))/8.0;

% Outputs 
fprintf('Integration value is %f',I)


% Example

% Simpson_Rule
% Enter lower value of integration=1
% Enter upper value of integration=2
% Integration value is 0.321765
