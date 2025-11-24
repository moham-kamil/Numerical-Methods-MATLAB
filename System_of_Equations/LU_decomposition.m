% LU Decomposition

% Name : Mohamed Mustafa Kamil , ID : 2180205565

N = input('Enter the NO. equations (dimension of matrix): ');
A = input('Enter the coefficient matrix: ');
L = zeros(N,N);
U = zeros(N,N);
for a = 1:N
    L(a,a) = 1; % Error in source, U(a,a)=1; is used for Doolittle. L(a,a)=1 is used for Crout/Gauss-Jordan, this code seems to be Crout or a variation where U has 1s on the diagonal (Doolittle)
    % Based on the output, the code implements Doolittle where U's diagonal is 1s, but L's diagonal is NOT 1s.
end

% The structure in the source file is highly unusual/fragmented. 
% Assuming the intention is Doolittle LU Decomposition (U diagonal = 1s):

L(:,1) = A(:,1);
U(1,:) = A(1,:)/L(1,1);

% Correction based on the fragmented source code logic
% Reconstructing the loop based on the provided lines:
L = zeros(N,N);
U = zeros(N,N);
for a=1:N
    U(a,a)=1; % Assuming Doolittle LU
end
L(:,1) = A(:,1);
U(1,:) = A(1,:)/L(1,1);

for j=2:N
    for i=j:N
        % Calculation for L(i,j)
        L(i,j) = A(i,j) - L(i,1:j-1) * U(1:j-1,j); 
    end
    
    % Calculation for U(j,k)
    for k=j+1:N
        U(j,k) = (A(j,k) - L(j,1:j-1) * U(1:j-1,k)) / L(j,j);
    end
end

L
U