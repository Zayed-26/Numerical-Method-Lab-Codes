A = [10 -2 -1 -1; -2 10 -1 -1; -1 -1 10 -2; -1 -1 -2 10];
X = zeros(4,1);
Y = zeros(4,1);
B = [3; 15; 27; -9];
n = input('Number of Unknowns: ');
tol = 0.01;
maxit = 100;
for iter = 1:maxit
  fprintf('#%d\t',iter);
  for i=1:n
    sum1 = 0;
    sum2 = 0;
    for j=i+1:n
      sum1 =sum1 + A(i,j)*X(j,1);
    end
    for j=1:i-1
      sum2 = sum2 + A(i,j)*X(j,1);
    end
    X(i,1) = (1/A(i,i))*((B(i,1)) - sum1 - sum2);
 
    fprintf('X(%d) = %.4f \t', i,X(i,1));
    if(i==n) fprintf('\n'); end
  end
   if( abs((X - Y) < tol))
      return;
    end
    Y = X;
end