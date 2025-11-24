% SECANT METHOD - MODIFIED CODE

% Name : Mohamed Mustafa Kamil , ID : 2180205565

% Example : f(x)=3*x^3-5*x-7  ,  eps=0.5*10^(-2) , Show iteration table

clear all;
close all;

% Inputs
    fun=input('Enter function f(x) = ','s');   % OR directly use "fun=@(x) 3*x^3-5*x-7"
    f=inline(fun);                             % let fun = 3*x^3-5*x-7 
    x(1)=0;                                    % Intialize
    x(2)=0;                                    % Intialize
    
% Guess interval "Try & Error from -100 to 100"
  for i=-100:100                              
    for k=i:100                              
        if f(i)*f(k+1)<0
            x(1)=i;
            x(2)=k+1;
            break
        end
    end
  end 
    
% Guess interval manually
    if x(1) == x(2)   
    disp('Sorry, the guess interval cannot be found, enter it manually!!');
    x(1)= input('Enter x1 : ');
    x(2)= input('Enter x2 : ');
    end 

    eps=input('Enter allowed Error in calculation: ');     % eps = Error
    iter=0;

% Iteration Loop (max:98)
    for i=3:100
       x(i) = x(i-1) - (f(x(i-1)))*((x(i-1) - x(i-2))/(f(x(i-1)) - f(x(i-2))));
        iter=iter + 1;
        
% for view iteration table
      j(iter)=iter;
      x0(iter) = x(i-2);
      f0(iter) = f(x(i-2));
      x1(iter) = x(i-1);
      f1(iter) = f(x(i-1));
      x2(iter) = x(i);
      E(iter) = abs((x(i)-x(i-1)));

        
        if abs((x(i)-x(i-1))) < eps   % terminate loop
           break
        end
    end

% Outputs
     disp(['guess interval : [' num2str(x(1)) ' , ' num2str(x(2)) ']']);
     T = table(j(:), x0(:), f0(:), x1(:), f1(:), x2(:), E(:));       % View table (optional)
     T.Properties.VariableNames = {'j' 'x0' 'f0' 'x1' 'f1' 'x2' 'E'}
     disp(['After ' num2str(iter) ' iterations']);
     fprintf('Root is x = %f',x(i));
     
    
     
     
% Example

% Enter function f(x) = 3*x^3-5*x-7
% Enter allowed Error in calculation: 0.005
% guess interval : [1 , 2]
% 
% 
%     j      x0         f0         x1         f1         x2          E    
%     _    ______    ________    ______    ________    ______    _________
% 
%     1         1          -9         2           7    1.5625       0.4375
%     2         2           7    1.5625     -3.3684    1.7046      0.14213
%     3    1.5625     -3.3684    1.7046    -0.66336    1.7395     0.034855
%     4    1.7046    -0.66336    1.7395    0.092656    1.7352    0.0042718
% 
% After 4 iterations, Root is x = 1.7352