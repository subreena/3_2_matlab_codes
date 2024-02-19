clc;
close all;

n=-10:10;
u=[zeros(1,10) 1 zeros(1,10)];
subplot(2,1,1);
stem(n,u, 'g', 'LineWidth', 2);
axis([-12 12 -1 2])
xlabel('Time');
ylabel('Amplitude');
title('Unit Impulse Signal');
grid on;

%sinusoidal
% Time values
t = -2*pi:0.01:2*pi;
frequency = 1;  
amplitude = 2; 
subplot(2,1,2);
sinusoidal_signal = amplitude * sin(frequency * t);
plot(t, sinusoidal_signal, 'b', 'LineWidth', 2);
xlabel('Time');
ylabel('Amplitude');
title('Sinusoidal Signal');
grid on;