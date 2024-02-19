clc;
clear all;
close all;

xn = [ 1 1 1 0 ];
xk = dft_function(xn);
xk

xk = [3 -j 1 j];
xn = idft_function(xk);
xn