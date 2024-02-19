clc;
close all;
clear all;

%linearity;
x1 = [1 2 3];
x2 = [1 1 1];

a = 2;
b = 3;

x3 = a*x1+b*x2;
xk1 = dft_function(a*x1);
xk2 = dft_function(b*x2);
xk3 = dft_function(x3);

tolerance = 1e-10;
if(max(abs(xk1+xk2 -xk3))<tolerance)
    disp('linear');
else
    disp('non linear');
end

    
