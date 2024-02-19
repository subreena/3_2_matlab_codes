t = -6:5;
x = [0, 0, 2, -1, 3, 7, 1, 2, -3, 0, 0, 0];
y = [0, 0, 1, -1, 2, -2, 4, 1, -2, 5, 0, 0];
% Calculate cross-correlation
cross_corr = xcorr(x,y);
% Calculate autocorrelation of x
auto_corr_x = xcorr(x);

% Plot signal x[n]

subplot(4, 1, 1);
stem(t, x);

title('Signal x[n]');
xlabel('Interval');
ylabel('Amplitude');
grid on;

% Plot signal y[n]
subplot(4, 1, 2);
stem(t, y);
title('Signal y[n]');
xlabel('n');
ylabel('Amplitude');
grid on;

% Plot cross-correlation
subplot(4, 1, 3);
stem(-11:11, cross_corr, 'g', 'LineWidth', 2);
title('Cross-correlation of x[n] and y[n]');
xlabel('Lag (n)');
ylabel('Cross-correlation');
grid on;

%plot auto-correlation
subplot(4,1,4);
stem(-11:11, auto_corr_x, 'g', 'LineWidth', 2);
title('Auto-correlation of x[n] and y[n]');
xlabel('Lag (n)');
ylabel('Auto-correlation');
grid on;

% Display the results
disp('Cross-correlation:');
disp(cross_corr);
disp('Auto-correlation: ');
disp(auto_corr_x);
