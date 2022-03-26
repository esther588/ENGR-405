%This script tests the function by creating a script to print a user
%defined number of Fibonacci sequence values

% EstherCheng
% ENGR 405
% ChengLab9Problem4

clc
clear

%Prompt user for a value
num = input('Enter a number: ');

%Call fib function to get Fibonacci number
fibNum = fib(num);

%Print the result
fprintf("The Fibonacci number is %d\n", fibNum);