clc;
close all;

fprintf('1st sequence size: ');
N1 = input ('');

for i = 1 : 1 : N1
    xn1 (1, i) = input ('');
end

fprintf ('2nd sequence size: ');
N2 = input ('');
for i = 1 : 1 : N2
    xn2 (1, i) = input ('');
end

fprintf('Circular convolution by builtin function: ');

yn_circular = cconv(xn1,xn2,N1);

yn_circular

temp1 = xn1;
temp2 = xn2;

xn1 = dft_function (xn1, N1);
xn2 = dft_function (xn2, N2);

yn = xn1 .* xn2;

yn = idft_function (yn, length(yn));

fprintf('Circular convolution by DFT: ');

yn

%now matrix:::
N = max(N1, N2);
temp1 = [temp1, zeros(1, N - N1)];
temp2 = [temp2, zeros(1, N - N2)];

y_circular_shift = zeros(1, N);
for i = 1:N
    temp1_shifted = circshift(temp1, [0, i-1]);
    y_circular_shift = y_circular_shift + temp1_shifted * temp2(i);
end

 y_circular_shift

