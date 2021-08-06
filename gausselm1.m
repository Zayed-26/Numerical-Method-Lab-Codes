A = [2 2 1; 3 2 3; 1 4 9];
B = [10; 18; 16];
X = zeros(3,1);
n = input('Number of unknowns: ');
C = [A,B];
for k = 1 : n-1
  for i = k+1 : n
    u = ( C(i,k) / C(k,k) );
    for j = k : n + 1
      C(i,j) = abs(C(i,j)) - (u * C(k,j));
      display(C);
    endfor
  endfor
endfor
b = C(:,n+1);
for i=n:-1:1 
  sum1 = 0;
    for j=i+1:n
      sum1 = sum1 + C(i,j)*X(j,1);
    endfor
  X(i,1) = ( b(i,1) - sum1)/C(i,i);
endfor
output_precision(7);
display(X);
