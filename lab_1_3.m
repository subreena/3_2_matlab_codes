%exponential
% Time values
t = -5:0.01:5;
% Exponential signal parameters
A = 2;          % Amplitude
alpha = 0.5;    % Exponential decay rate

% Create the exponential signal
x = A * exp(alpha * t);

% Plot the exponential signal

plot(t, x);
xlabel('Time');
ylabel('Amplitude');
title('Exponential Signal');
grid on;