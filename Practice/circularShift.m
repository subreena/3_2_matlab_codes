clc;

x= [1 2 -2 3];
k = 1;
y = circshift(x,[0,k]);
y

%time reversal
N = length(x);
for n=0:N-1
    idx=mod(N+n-k,N) + 1;
    y1(1,n+1) = x(1,idx);
end
y1
