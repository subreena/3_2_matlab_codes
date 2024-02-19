clc;
clear all;
close all;

fprintf('Enter the size of seq: ');
N = input('');

for i = 1:N
    fprintf('Enter the value of %d: ', i);
    xk(1,i) = input('');
end

for n = 1:N
    sum = 0;
    for k = 1:N
        e = exp(j*2*pi*(k-1)*(n-1)/N);
        sum = sum + (e * xk(1,k));
    end
    xn(1,n) = sum/N;
end

xn 
fprintf('xn= ');
for i = 1:N
    fprintf('%d ', xn(1,i));

end

