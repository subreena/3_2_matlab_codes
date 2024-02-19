clc;
close all;


y1 = [ 1 2 3 1 2 3 4 5 ];
h1 = [ 1 1 1 0 0 0 1 1 ];

X = conv (y1, h1);


figure(1);

subplot(3,1,1)
stem(y1)
title('input (y(n))')
subplot(3,1,2)
stem(h1)
title('impulse response (h(n))');
subplot(3,1,3)
stem(X)
title('output (x(n))');