clc;
x1 = [1 2 3 4];
x2 = [2 1 2 1];

temp1 = [x1,zeros(1,length(x2)-1)];
temp2 = [x2,zeros(1,length(x1)-1)];

temp_final = zeros(1,length(temp1));
N = length(temp2);
for i=1:N
    temp_shift = circshift(temp1,[0,i-1]);
    temp_final = temp_final + temp_shift * temp2(1,i);
end
temp_final