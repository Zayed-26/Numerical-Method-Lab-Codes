y = @(x)exp(-x)-x^2;

y1 = @(x)-exp(-x)-2*x;

x0 = input('Enter x0: ');
%d = 0.01;
e = input('Tolerable Error: ');
fprintf('\n\t#\t\tx1\t\terr\n');
for i=1:100
  f0 = y(x0);
  f1 = y1(x0);
  x1 = x0 - (f0/f1);
  fprintf('\t%d\t\t%f\t%f\n', i,x1,abs(x1 - x0)/x1);
  if( (abs(x1 - x0)/x1) < e)
   fprintf('Root is: %f\n',x1);
   fprintf('Number of Iterations: %d\n',i);
   return
  end
  x0 = x1;
end