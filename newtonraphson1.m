y = @(x)20*x^2 - 15*x -10;

y1 = @(x) 40*x -15;

x0 = input('Enter x0: ');
d = 0.0001;
e = input('Tolerable Error: ');

for i=1:100
  f0 = y(x0);
  f1 = y1(x0);
  if(f1 <= d)
    fprintf('Slope is too small for this initial guess.\n');
    return
   end
  x1 = x0 - (f0/f1);
  if( (abs(x1 - x0)/x1) < e)
   fprintf('Root is: %f\n',x1);
   fprintf('Number of Iterations: %d\n',i);
   return
  end
  x0 = x1;
 endfor