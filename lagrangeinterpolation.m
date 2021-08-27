x = [1 2 3 4 5 6];
y = [0 0.6931 1.0986 1.3863 1.6094 1.7918];
n = length(x)-1;
xpol = input('Enter a Value: ');
sum = 0;
for i=1:n+1
    L = 1;
    for j=1:n+1
        if j~=i
            L = L * ((xpol - x(j))/(x(i)-x(j)));
        end
    end
    sum = sum + L*y(i);
end
fprintf('ln(%.2f) = %.4f \n', xpol, sum);
