% Define the system's operation (you need to replace this with the actual system function)

H = @(x) 2 * x; % Replace with the appropriate system operation

% Generate two different input signals
n = 0:10; % Time index
x1 = [0 1 2 3 4 5 6 7 8 9 ]; % Input signal 1
x2 = [1 1 2 1 4 5 6 7 8 9 ]; % Input signal 2

% Calculate the responses to the individual input signals
y1 = H(x1);
y2 = H(x2);
% Calculate the response to the sum of input signals
y_sum = H(x1 + x2);

% Verify the linearity property
if isequal(y_sum, y1 + y2)
    disp('The system is linear.');
else
    disp('The system is not linear.');
end
