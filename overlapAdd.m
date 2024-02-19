clc;
close all;

% Parameters
x = [ 1 2 3 3 2 1 -1 -2 -3]
h = [3 2 1 1];
N = 7;

% Determine the length of the signals
M = length(x);
L = length(h);

% Compute the number of blocks
num_blocks = ceil((M + L - 1) / N);

% Zero-pad the input signal and impulse response
x_padded = [x, zeros(1, N - 1)];
h_padded = [h, zeros(1, N - 1)];

% Initialize the output signal
y = zeros(1, M + L - 1);

% Overlap-add method
for i = 1:num_blocks
    % Extract the current block from the padded input signal
    x_block = x_padded((i - 1) * N + 1 : i * N);

    % Perform convolution
    convolution_result = ifft(fft(x_block) .* fft(h_padded, N));

    % Overlap and add to the output signal
    y((i - 1) * N + 1 : i * N + L - 1) = ...
        y((i - 1) * N + 1 : i * N + L - 1) + convolution_result;
end

% Trim the output to the correct length
y = y(1:M + L - 1);

% Display or use the result as needed
disp(y);
