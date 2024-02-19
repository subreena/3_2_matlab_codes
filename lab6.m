% Initialize parameters
N = 100; % Number of time steps
y = zeros(1, N); % Initialize the output sequence
x = randn(1, N); % Random input sequence

% Simulate the system behavior and check for stability
isStable = true; % Assume stability initially

for n = 2:N
    y(n) = y(n-1)^2 + x(n);
    
    % Check for instability (e.g., if the value grows too large)
    if abs(y(n)) > 10
        isStable = false;
        break; % No need to continue simulation if instability is detected
    end
end

if isStable
   disp(y(n));
    disp('The system is stable.');
else
     disp(y(n));
    disp('The system is not stable.');
end
