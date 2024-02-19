clc;
clear all;
close all;

xn = [1 2 3 1 1 ];
N = 4;
k= 1:4;
x(k) = zeros(1,N);
x(k) = fft(xn);
LHS = x(k);

disp(LHS);

yn = xn(mod(k+N,N+1)+1);
yn
x1 = dft_function(yn);
RHS = x1(k);

disp(RHS)

if isequal(LHS,RHS)
    disp('periodic');
else
    disp('not periodic');
 end
    

