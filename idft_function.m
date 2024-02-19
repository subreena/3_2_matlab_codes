function res = idft_function(xk, N)
for n = 1 : 1 : N
    sum = 0;
    for k = 1 : 1 : N 
        e = exp((i * 2 * pi * (k - 1) * (n - 1)) / N);
        sum = sum + (e * xk(1, k));
    end
    res(1, n) = (sum / N);
end
end