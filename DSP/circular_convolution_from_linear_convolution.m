clc;

xn = [1 3 2 -1 1 ];
hn = [2 1];


N = max(length(xn),length(hn));

%linear convolution
yn = conv(xn, hn);
yn



temp_new = zeros(1,N);

for i=1:N
  temp_new(1,i) = temp_rev(1,i) + temp_rev_2(1,i);
end

%circular convolution
output = fliplr(temp_new);
output

