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
for i=1:150
    x2 = ((x0*fx1) - (x1*fx0))/(fx1 - fx0);
    fx2 = y(x2);
    if((abs(fx2)<=e))
      fprintf('%f is the root.\n',x2);
      fprintf('Number of Iterations: %d\n',i);
      return
      end
  if ((fx0*fx2) < 0)
      x1 = x2;
      fx1 = fx2;
      end
  if ((fx0*fx2) > 0)
      x0 = x2;
      fx0 = fx2;
      end
endfor
fprintf('Does no converge in %d iterations\n',i);