
function xk = dft_function(xn)
N = length(xn);
xk= zeros(1,N);
for k=1:N
    sum = 0;
    for n=1:N
        e = exp((-j*2*pi*(n-1)*(k-1)/N));
        sum = sum + (e*xn(1,n));
    end
    xk(1,k) = sum;
end
        