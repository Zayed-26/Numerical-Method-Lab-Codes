y = @(x)20*x^2 - 15*x -10;
x0 = input('Enter x0: ');
x1 = input('Enter x1: ');
e = input('Tolerable Error: ');
d = 0.0001;

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
for i = 1:1000
  if abs(fx1 - fx0) < d 
    fprintf('No root in given interval.\n');
    break; 
    return;
  end
  x2 = ((x0*fx1)-(x1*fx0))/(fx1 - fx0);
  fx2 = y(x2);
  if abs(fx2) < e 
    fprintf('Root is: %f\n', x2);
    fprintf('Number of Iterations: %d\n',i);
    break; 
    return;
    else
    fx0 = fx1;
  fx1 = fx2;
  x0 = x1;
  x1 = x2;
  end
  
 end
 