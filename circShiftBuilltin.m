clc;
clear all;
close all;

fprintf('Enter the length of seq 1: ');
N1 = input('');
x1=zeros(1,N1);
for i =1:N1
    x1(1,i)=input('');
end
fprintf('enter shift value');
k = input('');

yn = circshift(x1,[0,-k]);