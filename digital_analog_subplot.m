%digital analog printing


xn = [ 1 0 1 0 1 1];
n= 0: length(xn) -1;
t = 0:0.01:2*pi;
xt = sin(t);

figure;
subplot(2,1,1);
plot(t,xt);
xlabel('time');
ylabel('amplitude');
title('Analog signal');
grid on;

subplot(2,1,2);
stem(n,xn);
xlabel('time');
ylabel('amplitude');
title('Digital signal');
grid on;