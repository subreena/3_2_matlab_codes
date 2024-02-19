clc;
clear all;
close all;

n=1:9;
%T[x[n-k]] == y(n - k)

x(n)=[2 1 4 3 6 5 8 7 9];

d=3;
y(n)= x(n).^2; %y(n)
yd=[zeros(1,d),y];%y(n-k) 
%y = 4 1 16 9 36 25 64 79 81
 
% some time delay
%x(n-k)
xd=[zeros(1,d),x(n)];%x(n-k)
dy=xd.^2;

disp(x(n));
disp(xd);
disp(y(n));
disp('transformation of delay signal yd:');
disp(yd);

% T[x(n-k)]

disp('delay of transformation signal dy:');
disp(dy)

if isequal(dy,yd)
 stem(n,x);
 title('The input system [y(n)=x(n).^2 ] is time invariant');
 disp('given system [y(n)=x(n).^2 ]is time invariant');

else
    stem(n,x);
 title('The input system [y(n)=x(n).^2 ] is not time invariant');
 disp('given system is [y(n)=x(n).^2 ]not time invariant');

end