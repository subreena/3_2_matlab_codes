clc;
close all;
clear all;
xn = [1 1 1 0];
N = length(xn);
xk=[ ];
xkk=[];

for k = 1: N
    sum = 0;
    for n = 1 :1: N
       expo = exp(-i*(2*pi/N)*(k-1)*(n-1));
       sum = sum + (xn(1,n)*expo);    
    end
    xk(k) = sum; 
end

xk



m = [];
p = [];
for i = 1:1:N
    m(1,i) = abs(xk(1,i));
    p(1,i) = angle(xk(1,i));
end
fprintf('\n\n');
m

fprintf('\n\n');
p

grid on;
subplot(2,2,1);
stem(xn);
axis([-5 5 -5 5]);
title('x(n)-input');

subplot(2,2,2);
stem(xk);
axis([-5 5 -5 5]);
title('x(k) - DFT');

subplot(2,2,3);
stem(m);
axis([-5 5 -5 5]);
title('magnetude');

subplot(2,2,4);
stem(p);
axis([-5 5 -5 5]);
title('phase');














