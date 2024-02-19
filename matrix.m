clc;
close all;

r = 3;
c = 3;

v = zeros(2,4);
v

fprintf('Enter the 1st matrix values\n');
x1 = zeros(r,c);

for i = 1:r
    for j = 1:c
        fprintf('[%d] [%d] ', i, j);
      x1(i,j) = input('value:');
    end
end

x1
size(x1)
fprintf('circ');
c = circshift(x1,1);
disp(c);

fprintf('Enter the 2nd matrix values\n');
x2 = zeros(r,c);

for i = 1:r
    for j = 1:c
        fprintf('[%d] [%d]', i, j);
      x2(i,j) = input('value:');
    end
end

x2

x3 = zeros(r,c);
x4 = zeros(r,c);

sum = 0;
for i = 1:r
    for j = 1:c
       
      x3(i,j) = x1(i,j) + x2(i,j);
      sum = sum + x3(i,j)
    end
end

fprintf('sum: ');

x3

fprintf('\nx1 * x2\n');
disp(x1 * x2)
fprintf('\nx1 . x2\n');
x1 .* x2

fprintf('\ntranspose \n');
x3'
fprintf('\ntranspose \n');
disp(x3.')
disp(size(x3));


fprintf('Function chole');
add(sum);



