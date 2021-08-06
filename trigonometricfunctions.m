clc;
x1 = 0:0.1:400;
x2 = -90+0.1:0.1:90-0.1;

subplot(3,2,1);
plot(x1,sind(x1));
title('sin(x)');
xlabel('x');
ylabel('sin(x)');

subplot(3,2,2);
plot(x1,cosd(x1));
title('cos(x)');
xlabel('x');
ylabel('cos(x)');

subplot(3,2,3);
plot(x2,tand(x2));
title('tan(x)');
xlabel('x');
ylabel('tan(x)');

subplot(3,2,4);
plot(x2,cotd(x2));
title('cot(x)');
xlabel('x');
ylabel('cot(x)');

subplot(3,2,5);
plot(x1,secd(x1));
title('sec(x)');
xlabel('x');
ylabel('sec(x)');

subplot(3,2,6);
plot(x1,cscd(x1));
title('cosec(x)');
xlabel('x');
ylabel('cosec(x)');
