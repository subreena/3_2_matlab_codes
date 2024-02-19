function res = dft_function(xn, N)
    for k = 1 : 1 : N
        sum = 0;
        for n = 1 : 1 : N
            e = exp(-((j * 2 * pi * (k - 1) * (n - 1)) / N));
            sum = sum + (e * xn(1,n));
        end
        res(k) = sum;
    end
end