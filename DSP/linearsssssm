clc;
clear all;
close all;

x1 = [1 2 3];
x2 = [3 4 5];
x3 = [1 2 3 3 4 5];



xk1 = dft_function(x1);
xk2 = dft_function(x2);

xk3 = dft_function(x3);

if isequal(xk1 + xk2, xk3)
    disp('linear');
else
    disp('not linear');
end
