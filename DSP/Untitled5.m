clc;
clear all;
close all;

fprintf('enter seq 1 size: ');
N = input('');
fprintf('Enter seq 1: ');

x1 = zeros(N);
for i=1:N
    x1(1,i) = input('');
end

fprintf('enter seq 2 size: ');
M = input('');
fprintf('Enter seq 2: ');

x2 = zeros(N);
for i=1:M
    x2(1,i) = input('');
end

xk1 = dft_function(x1);
xk2 = dft_function(x2);

yk = xk1 .* xk2;
yn = idft_function(yk);
yn
