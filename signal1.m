%1.Unit Step Signal

n=-10:10;
u=[zeros(1,10) ones(1,11)];
subplot(2,1,1);
stem(n,u);
axis([-12 12 -1 2])
xlabel('Time');
ylabel('Amplitude');
title('Unit Step Signal');
grid on;

%2. unit impulse


u=[zeros(1,10) 1 zeros(1,10)];
subplot(2,1,2);
stem(n,u);
xlabel('Time');
ylabel('Amplitude');
title('Unit Impulse Signal');
grid on;

% Exponential signal



%4.	Unit ramp signal

%5. Unit parabolic signal
%6. Unit rectangle pulse
%7. Triangular signal
%8. Sinusoidal signal
%9. Symmetric (Even) and Antisymmetric (Odd) signals
