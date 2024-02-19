clc;
clear all;
close all;

fprintf('enter the seq 1 size: ');
N1 = input('');

fprintf('enter the seq 2 size: ');
N2 = input('');

xn1 = zeros(1,N1);
for i=1:N1
    fprintf('enter the seq 1 value for %d: ', i);
    xn1(1,i) = input('');
end

xn2 = zeros(1,N2);
for i=1:N2
     fprintf('enter the seq 2 value for %d: ', i);
     xn2(1,i) = input('');
end

N = max(N1,N2);

temp1 = [xn1, zeros(1,N-N1)];
temp2 = [xn2, zeros(1,N-N2)];
yn = zeros(1,N);

for i=1:N
    temp_shift = circshift(temp1,[0,i-1]);
    yn = yn + temp_shift * temp2(i);
end

yn
