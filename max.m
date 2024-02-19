close all;
clear all;

a = input('\nEnter the first number: ');
b = input('Enter the second number: ');
c = input('Enter the third number: ');

if a>b && a>c
    fprintf('a = %d is the largest number', a);
elseif b>a && a>c
        fprintf('b = %d is the largest number', b);
    else
         fprintf('c = %d is the largest number\n\n', c);
end     
    