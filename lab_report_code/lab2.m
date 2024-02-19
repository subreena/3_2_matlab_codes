clc;
close all;

x=[ -1 0 1 2 3 4 4 4 4 4]; %input

t = [-5 -4 -3 -2 -1 0 1 2 3 4]; %time

subplot(3,1,1);
stem(t,x);
title('x[n]');
xlabel('time index');
ylabel('amplitude');

n = t - 3;
subplot(3,1,2);
stem(n,x);
title('x[n - 3]');
xlabel('time index');
ylabel('amplitude');

n = t + 3;
subplot(3,1,3);
stem(n,x);
title('x[n + 3]');
xlabel('time index');
ylabel('amplitude');



