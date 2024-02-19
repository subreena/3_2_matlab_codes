function xk = dft_function(xn)

N = length(xn);

for k = 1:N
    sum = 0;
    for n = 1:N
        e = exp(-j*2*pi*(k-1)*(n-1)/N);
        sum = sum + (e*xn(1,n)); 
    end
    xk(1,k) = sum;
end
