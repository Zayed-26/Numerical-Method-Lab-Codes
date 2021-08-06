clc;
a = input('Enter CT1 Marks: ');
b = input('Enter CT2 Marks: ');
c = input('Enter CT3 Marks: ');
d = input('Enter CT4 Marks: ');

CT = [a b c d];
minimum = min(CT);
total = sum(CT);
avg = (total - minimum)/3;

fprintf('CT Avg: %f\n',avg);