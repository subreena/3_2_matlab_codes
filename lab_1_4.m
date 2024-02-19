%unit ramp
% Time values
t = -10:10;
u=[zeros(1,10) 1 ones(1,10)];

% Create the unit ramp signal
r = t .*u;

% Plot the unit ramp signal
plot(t, r);
xlabel('Time');
ylabel('Amplitude');
title('Unit Ramp Signal');
grid on;