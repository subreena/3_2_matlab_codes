%digital
clc;
close all;
clear all;

x1 = [1 2 3 4 5 6];

figure(200);

%digital
subplot(2,2,1);
h = stem(x1,'b');
axis([-5, 5, -2, 7]);
set(h, 'LineWidth', 2);
grid on;
title('Analog');
xlabel('amplitude:');
ylabel('frequency');
legend('digital');

%analog
subplot(2,2,2);
x2 = -pi:0.5:pi;
t = linspace(-pi,pi,1000);
y= sin(t);
s = plot(t,y,'r');
axis([-pi, pi, -2,2]);
set(s, 'LineWidth', 2);
grid on;
title('Digital');
xlabel('amplitude:');
ylabel('frequency');
legend('analog');
