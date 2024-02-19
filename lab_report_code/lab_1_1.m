
n=-10:10;
u=[zeros(1,10) 1 ones(1,10)];
stem(n,u);
axis([-12 12 -2 2])
xlabel('Time');
ylabel('Amplitude');
title('Unit Step Signal');
grid on;