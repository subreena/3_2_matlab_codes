%sinusoidal
% Time values
t = -2*pi:0.01:2*pi;

% Frequency and amplitude of the sinusoidal signal
frequency = 1;  % Adjust this value to change the frequency
amplitude = 2;  % Adjust this value to change the amplitude

% Create the sinusoidal signal
sinusoidal_signal = amplitude * sin(frequency * t);

% Plot the sinusoidal signal
plot(t, sinusoidal_signal, 'b', 'LineWidth', 2);
xlabel('Time');
ylabel('Amplitude');
title('Sinusoidal Signal');
grid on;