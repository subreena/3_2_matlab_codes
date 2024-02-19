close all;
clc;

sum = 0;

v = [ ];
for i=1:5
  v(i) = input('value: ');
    sum = sum + v(i);
end

fprintf('Sum: %d ', sum);
