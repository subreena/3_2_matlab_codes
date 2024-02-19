clc;
close all;

% Input signals
x = [1,2,3,4];
h = [2,1,2,1];

% Ensure that both signals are of the same length
N = length(x);
M = length(h);
L = N + M - 1;

% zero-padding
x_pad = [x, zeros(1, L - N)];
h_pad = [h, zeros(1, L - M)];


linear_convo = zeros(1, L);

% Perform linear convolution using the convolution sum
for n = 1:L
    for k = 1:M
        if n - k + 1 > 0 && n - k + 1 <= N
            linear_convo(n) = linear_convo(n) + x_pad(n - k + 1) * h_pad(k);
        end
    end
end

disp('Linear Convolution Result:');
disp(linear_convo);
