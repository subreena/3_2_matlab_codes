clc;
clear all;
close all;

x1 = [1 2 3 4];
x2 = [2 1 2 1];
a1 = 2;
a2 = 3;

x3 = [a1* x1 + a2 *x2];

xk1 = dft_function(a1*x1);
xk1
xk2 = dft_function(a2*x2);
xk2
xk3 = dft_function(x3);
xk3

% Check linearity
tolerance = 1e-10;
if max(abs(xk1 + xk2 - xk3)) < tolerance
    disp('The system is linear.');
else
    disp('The system is not linear.');
end