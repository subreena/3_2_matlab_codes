clc;
clear all;
close all;

fprintf('Enter size of Seq for dft:');
N = input('');

for i=1:N
    fprintf('enter value %d: ',i);
    x(1,i)=input('');
end

for k=1:N
    sum=0;
    for n=1:N
        e = exp((-j*2*pi*(k-1)*(n-1))/N);
        sum = sum + (e*x(1,n));
    end
    xk(1,k) = sum;
end

xk1= fft(x);

xk
xk1


fprintf('Enter size of Seq for idft:');
N1 = input('');

for i=1:N1
    fprintf('enter value %d: ',i);
    x1(1,i)=input('');
end

for n=1:N1
    sum = 0;
    for k = 1:N1
        e = exp((j*2*pi*(k-1)*(n-1))/N);
        sum = sum + (e*x1(1,k));
    end
    xn(1,n) = sum/N1;
end

xn1 = ifft(x1);

xn
xn1

