% SIMPSON 3/8 RULE for [any value n]

% Name : Mohamed Mustafa Kamil , ID : 2180205565

% Example : Integral of (1/(x^2+1))  ,  on interval [0,2]
% Exact Solution = arctan(2)-arctan(0)= 1.107148718

clear all;
close all;

% Function
 fun=input('Enter function f(x) = ','s');   % OR directly use "fun=@(x) 1/(x^2+1)"
 f=inline(fun);     
 
% Inputs
a=input('Enter lower value of integration=');  % let a = 0
b=input('Enter upper value of integration=');  % let b = 2
n=input('Enter NO. Points n =');               % let n = 100
fSum=0;  

% Step size
h=(b-a)/(n-1);

for i=1:(n-2)
x=a+i*h;
    if mod(i,3)==0
        fSum=fSum + 2*f(x);
    else 
        fSum=fSum + 3*f(x); 
    end 
end

% Proccesing
I=3.0/8.0*h*(f(a)+f(b)+ fSum);

% Outputs 
fprintf('Integration value is %f',I)


% Example

% Simpson_Rule
% Enter function f(x) = 1/(x^2+1)
% Enter lower value of integration=0
% Enter upper value of integration=2
% Enter NO. Points n =100
% Integration value is 1.107149

% Error ~ 0.0
