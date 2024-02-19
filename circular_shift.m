% Circular Shift (Time Reversal) without fliplr

x1 = zeros(1,5);
fprintf('Enter the 3X3 array values');
for i = 1:5
    for j = 1:5
        fprintf('[%d] [%d] ', i, j);
      x1(i,j) = input('value:');
    end
end

% Original signal
original_signal = [1, 2, 3, 4, 5];

% Number of positions to shift (positive for right shift, negative for left shift)
shift_amount = -2;

% Circular shift using circshift
shifted_signal = circshift(original_signal, 2);

% Time reversal without using fliplr
num_elements = numel(shifted_signal);
time_reversed_signal = shifted_signal(num_elements:-1:1);

% Display original and time-reversed signals
disp('shifted Signal:');
disp(shifted_signal);

disp('Original Signal:');
disp(original_signal);

disp('Time-Reversed Signal:');
disp(time_reversed_signal);
