clc;
close all;
% Example signal
x = [1, 2, 3, 4, 5];

% DFT of the original signal
X = fft(x);

% Circular time shift amount
n0 = 2;

% Circularly shifted signal
x_shifted = circshift(x, 2);

% DFT of the circularly shifted signal
X_shifted = fft(x_shifted);

% Display the results
disp('Original Signal:');
disp(x);
disp('DFT of Original Signal:');
disp(X);

disp('Circularly Shifted Signal:');
disp(x_shifted);
disp('DFT of Circularly Shifted Signal:');
disp(X_shifted);
