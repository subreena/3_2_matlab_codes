clc;
x = [1 2 3 4 ];
N = 4;

dft_x = 0;
X = [ ];
for k = 0:N-1
    for n = 0:N-1
        e = exp(-j*2*pi*(n)*(k));
        dft_x = dft_x + (e*x(n+1));
    end
    X = [X, dft_x];
    dft_x = 0;
end

LHS = X
X1 = [ ];
dft_x1 = 0;
for k = 0:N-1
    for n = 0:N-1
       e = exp(-j*2*pi*(n)*(k));
       dft_x1 = dft_x1 + (e*x(mod(n+N,N)+1));
    end
    X1 = [X1, dft_x1];
    dft_x1 = 0;
end
RHS = X1
if isequal(LHS,RHS)
    disp('periodic')
else
    disp('non periodic')
end
        