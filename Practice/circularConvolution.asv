clc;
clear all; 
close all;

%builtin

x1 = [2 1 2 1];
x2 = [1 2 3 4];
N=max(length(x1),length(x2));
y1 = cconv(x1,x2,N);
y1

%dftIdft

xk1 = dft_function(x1);
xk2 = dft_function(x2);
x3 = xk1 .* xk2;
y2 = idft_function(x3);
y2

%matrix
temp1 = [x1,zeros(1,N-length(x1))];
temp2 = [x2,zeros(1,N-length(x2))];


final = zeros(1,N);
for i=1:N
    temp_shift = circshift(temp1,[0,i-1]);
    final = final + temp_shift * temp2(1,i);
end
final

%from linear
y4 = conv(x1,x2);

temp_l1 = y4(N:length(y4))
temp_l2 = y4(1:N-1);
temp_l2 = [fliplr(temp_l2),zeros(1,N-length(temp_l2))]

y5 = fliplr(temp_l1) + temp_l2



