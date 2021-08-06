clc;

y = @(x)20*x^2 - 15*x -10;
x0 = input('Enter x0: ');
x1 = input('Enter x1: ');
e = input('Tolerable Error: ');

fx0 = y(x0);
fx1 = y(x1);
if((fx0 * fx1) > 0)
  fprintf('No root in given interval.\n');
  return
end
if (fx0 == 0)
  fprintf('%f is the root.\n',x0);
  return
end
if (fx1 == 0)
  fprintf('%f is the root.\n',x1);
  return
end
x2 = (x0 + x1)/2;
  fx2 = y(x2);
  fprintf('\n\n\tx0\t\tx1\t\tx2\t\tfx2\n');
  i=0;
  while abs(fx2) > e
    fprintf('%f\t%f\t%f\t%f\n', x0,x1,x2, fx2);
    
    if ((fx0*fx2) < 0)
      x1 = x2;
    else
      x0 = x2;
    end
    x2 = (x0 + x1)/2;
    fx2 = y(x2);
    i = i+1;
    fprintf('%f\t%f\t%f\t%f\n', x0,x1,x2, fx2);
  end
  fprintf('Root is: %f\n',x2);
  fprintf('Number of Iterations: %d\n',i);