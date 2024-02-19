x=[1 1 2 2 3 3 4 4 0 0]; %input
n=3; %shift
x1=length(x);
xn=x1+n;
for i=1:xn;
    if(i<=n)
        xn0(i)=0;
    else
        xn0(i)=x(i-n);
    end;
end;


subplot(2,1,1);
stem(x);
title('Input sequence');
xlabel('time index');
ylabel('amplitude');
subplot(2,1,2);
stem(xn0);
title('delayed sequence');
xlabel('time index');
ylabel('amplitude');
figure;
w=0:pi/xn:pi*(xn-1)/xn;
X=fft(x,length(w));
Xn0=fft(xn0,length(w));
s=exp(-j*w*n).*X;
subplot(2,1,1);
stem(abs(Xn0));
title('DFT of the delayed sequence');
xlabel('time index');
ylabel('amplitude');
subplot(2,1,2);
stem(abs(s));
title('DFT of the original sequence*(e^-j*w*n)');
xlabel('time index');

ylabel('amplitude');