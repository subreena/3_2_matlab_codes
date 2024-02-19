%triangular
% Time values
t = -10:0.01:10;
y=sawtooth(t,0.5);

% Plot the triangular signal
axis([-12 12 -1 2])
plot(t, y);
xlabel('Time');
ylabel('Amplitude');
title('Triangular Signal');
grid on;