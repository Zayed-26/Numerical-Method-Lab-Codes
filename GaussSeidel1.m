A = [3 -.1 -.2; 0.1 7 -.3; .3 -.2 10];
X = zeros(3,1);
Y = zeros(3,1);
B = [7.85; -19.3; 71.4];
tol = 0.001;
maxit = 100;
for iter = 1:maxit
  for i=1:n
    sum1 = sum2 =0;
    for j=i+1:n
      sum1 =sum1 + A(i,j)*X(j,1);
    endfor
    for j=1:i-1
      sum2 = sum2 + A(i,j)*X(j,1);
    endfor
    X(i,1) = (1/A(i,i))*((B(i,1)) - sum1 - sum2);
    
    fprintf('#%d\tX(%d) = %f \t', iter,i,X(i,1));
    if(i==n) fprintf('\n'); end
   endfor
   if( abs((X - Y) < tol))
      return;
    end
    Y = X;
 endfor