%This script tests the function by creating a script to print a user
%defined number of Fibonacci sequence values

% EstherCheng
% ENGR 405
% ChengLab9Problem4

clc
clear

%Prompt user for a value
numTerms = input('Enter the number of terms: ');

fprintf("The Fibonacci sequence of numbers is \n");

for i=1:numTerms
    %Call fib function to get Fibonacci number
    fibNum = fib(i);

    %Print the result
    fprintf("%d ", fibNum);
end