%This script creates a Multiplication Table stored in a matrix, multTable, which is based on a starting value 
%and ending value provided by the user

% EstherCheng
% ENGR 405
% ChengLab5Problem3

%Prompts user for starting and ending values
startVal = input('Enter a starting value: ');
endVal = input('Enter a ending value: ');

%Create a column vector
colVec = [startVal:endVal]';

%Create a matrix of column vector by column vector
multTable = colVec.*colVec';

%Print asterisk
fprintf("%4s", "*");

%Print a column and row from starting value to ending value
for row = 1:length(multTable)
    fprintf("%4d", startVal - 1 + row);
end
fprintf("\n");
for col = 1:length(multTable)
    fprintf("%4d", startVal + col - 1);
    
    %Print the matrix
    for i = 1:length(multTable)
        fprintf("%4d", multTable(col, i));
    end
    fprintf("\n");
end

