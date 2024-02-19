%unit parabolic
% Time values
t = -5:0.01:5;

% Create the unit parabolic signal
unit_parabolic = t.^2 .* (t >= 0);

% Plot the unit parabolic signal
plot(t, unit_parabolic, 'r', 'LineWidth', 2);
xlabel('Time');
ylabel('Amplitude');
title('Unit Parabolic Signal');
grid on;