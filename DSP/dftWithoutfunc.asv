clc;
close all;
clear all;

fprintf('Enter the size of seq: ');
N = input('');

fprintf('Enter the seq: ');

for i=1:N
    xn(1,i) = input('');
end


for k = 1: N
    sum = 0;
    for n = 1:N
        e = exp((-j *2 * pi * (k-1) * ( n-1))/N);
        sum = sum + (e*xn(1,n));
    end
    Xk(1,k) = sum;
end

disp(Xk);