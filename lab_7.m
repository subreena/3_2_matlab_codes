%time shifting
x=[1 1 2 2 3 3 4 4 0 0]; %input
n=2; %shift
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

