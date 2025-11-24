% Gauss Elimination Method for Solving Linear Equations

% Name : Mohamed Mustafa Kamil , ID : 2180205565

clear all
clc
format rat
disp('         Solving the system of equations using')
disp('               Gauss Elimination Method')
fprintf('\n')

a=input('Enter the matrix A \n = ');
fprintf('\n')
b=input('Enter the matrix B \n = ');

A=[a b];
r=length(A(:,1));
c=length(A(1,:));

% --- Gauss Elimination Phase (Conversion to Echelon Form) ---
for i=1:r
        
    f=0;
    l=i;
    
    if A(i,i) ~= 1
        for m=i+1:r
            if A(m,i) == 1
                 B=A(i,:);
                 A(i,:)=A(m,:);
                 fprintf ('Swaping R%.f with R%.f.\n',m,i)
                 A(m,:)=B;
                 disp(A)
                 break;
            end
        end
    end
    
    if A(i,i)== 0
    
        for k=i+1:r
            if A(k,i)~= 0
                B=A(i,:);
                A(i,:)=A(k,:);
                fprintf ('Swaping R%.f with R%.f.\n',k,i)
                 A(k,:)= B;
                 disp(A);
                d=A(i,i);
                f=1;
            break;
            end
        end
        
        if f == 0
            for l=i+1:c-1
                if A(i,l) ~= 0
                    d=A(i,l);
                    f=1;
                break;
                end
            end
        end
        
    else
        d=A(i,i);
        f=1;
    end
    
   if f ~= 0 
        if d~=1
            fprintf('R%.f / (%s) \n',i,rats(d))
            A(i,:)=A(i,:)/d ;
            disp(A);
        end
        for j=i+1:r
            if A(j,l)== 0
                continue;
            end
            fprintf('R%.f-  (%s)*R%.f \n',j,rats(A(j,l)),i)
            A(j,:)=A(j,:) - A(j,l)*A(i,:);
            disp(A)
        end
   end
   
end

% --- Back Substitution Phase (Calculate Final Solution X) ---

fprintf('\n')
disp('========================================================')
disp('                 Final Solution (Back Substitution)     ')
disp('========================================================')

rank_A = rank(A(:,1:c-1));
rank_AB = rank(A);       
n = c - 1;               

if rank_A == rank_AB && rank_A == n
    
    X = zeros(n, 1);
    
    X(n) = A(n, c) / A(n, n);
    
    for i = n-1:-1:1
        sum_terms = 0;
        for j = i+1:n
            sum_terms = sum_terms + A(i, j) * X(j);
        end
        X(i) = (A(i, c) - sum_terms) / A(i, i);
    end
    
    disp('Unique solution found:')
    for i = 1:n
        fprintf('x%d = %s\n', i, rats(X(i)))
    end

elseif rank_A == rank_AB && rank_A < n
    
    disp('Infinite number of solutions (Free variables exist).')
    
elseif rank_A < rank_AB
    
    disp('No solution for the system.')
    
end