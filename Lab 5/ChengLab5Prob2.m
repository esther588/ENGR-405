%This script creates a Multiplication Table stored in a matrix, multTable, which is based on a starting value 
%and ending value provided by the user

% EstherCheng
% ENGR 405
% ChengLab5Problem2

%Prompts user for starting and ending values
startVal = input('Enter a starting value: ');
endVal = input('Enter a ending value: ');

%Create a column vector
colVec = [startVal:endVal]';

%Create a matrix of column vector by column vector
multTable = colVec.*colVec';
