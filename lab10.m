
% Define the input signal x[n]
x = [1, 2, 3, 6];
% Define the impulse response of the LTI system h[n]

h = [1, 2, 1, -2];
% Calculate the convolution of x[n] and h[n] to get the system response y[n]

y = conv(x, h);

subplot(3, 1, 1);
stem(x);
title('Input Signal x[n]:');
xlabel('n');
ylabel('Amplitude');

subplot(3, 1, 2);
stem(h,'g','linewidth',2);
title('Impulse Response h[n]');
xlabel('n');
ylabel('Amplitude');

subplot(3, 1, 3);
stem(y,'r','linewidth',2);
title('System response y[n] (result of convolution):');
xlabel('n');
ylabel('Amplitude');

% Display the result
disp('Input signal x[n]:'); 
disp(x);

disp('Impulse response h[n]:');
disp(h);

disp('System response y[n] (result of convolution):');
disp(y);
