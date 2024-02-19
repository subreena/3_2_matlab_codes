clc;
close all;
clear all;

xk = [ 3 0 - 1.0000i  1.0000 + 0.0000i  -0.0000 + 1.0000i];
%xn= 1/n * [summation xk e^j2pi/N*n

N = length(xk);

xn = [ ];
for n=0:1:N-1
    for k=0:1:N-1
        expo = exp(-i*(2*pi/N)*(k-1)*(n-1));
       sum = sum + (xk(1,k)*expo);    
         
    end
    xn(n) = sum/N;
end

xn;