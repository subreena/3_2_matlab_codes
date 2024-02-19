clc;
clear all;
close all;

x1 = [2 1 2 1];
x2 = [1 2 3 4 5 6];

N = max(length(x1),length(x2));
%circular conv
yn = cconv(x1,x2,N);
%cconv(first seq, second seq, max length)%
%according to matlab length of first seq will be the length of resultant seq%
yn

%linear conv
st = conv(x1,x2);
st
