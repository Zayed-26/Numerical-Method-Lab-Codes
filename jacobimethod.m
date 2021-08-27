A = [3 -.1 -.2; 0.1 7 -.3; .3 -.2 10];
d = diag(A);
D = diag(d);
R = A-D;
invD=inv(D);
X = zeros(3,1);
Y = zeros(3,1);
B = [7.85; -19.3; 71.4];
n = input('Number of Unknowns: ');
maxit = 100;
tol = 0.01;
fprintf('\t\tX1  \t\tX2  \t\tX3 \n');
for iter = 1:maxit
  
  fprintf('#%d',iter);
   
     X = ((invD)*B)-(invD*R*X);
   
     disp(X');

   if( abs((X - Y) < tol))
      return;
    end
    Y = X;
end