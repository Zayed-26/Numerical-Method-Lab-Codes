12 + 15

15 * 16

15 / 3

15 \ 3

A = [1 2 3; 4 5 6; 7 8 9];
B = [21 22 23; 24 25 26; 27 28 29];

%addition
add = A + B

%subtraction
sub = A - B

%multiplication
mul = A * B

%average of 20 random integers
N = randi(100, 20, 1);
SUM = 0;
for i=1:20
  SUM = SUM + N(i);
end
N
avg = SUM/20
