clc;
close all;

% Define a signal
t = 0:0.1:5;  % Time vector
x = exp(-t);  % Causal signal (decaying exponential)

% Check for causality
is_causal = true;

for i = 1:length(x)
    % Check if the current value depends on future values
    future_values = x(i+1:end);
    if any(future_values > x(i))
        is_causal = false;
        break;
    end
    
end

if is_causal
    stem(t,x);
    title('The signal is causal');
    disp('The signal is causal.');
else
    stem(t,x);
    disp('The signal is not causal.');
end