clc;
clear all;
close all;

x1 = [1 2 3 4];
x2 = [2 1 2 1];

%built in

yn1 = conv(x1,x2);
yn1


temp1 = [x1, zeros(1,length(x2)- 1)];
temp2 = [x2, zeros(1,length(x1)-1)];

yn2 = zeros(1,length(temp1));
N = length(x1);
for i =1: N
    mat = circshift(temp1,[0,i-1]);
    yn2 = yn2 + mat * temp2(1,i);
end
yn2
