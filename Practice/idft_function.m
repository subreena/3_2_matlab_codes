function xn = idft_function(xk)
N = length(xk);
xn= zeros(1,N);
for n=1:N
    sum = 0;
    for k=1:N
        e = exp((j*2*pi*(n-1)*(k-1))/N);
        sum = sum + (e*xk(1,k));
    end
    xn(1,n) = sum/N;
end