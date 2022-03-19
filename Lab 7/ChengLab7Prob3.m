%This script will generate a random integer, ask the user for 
% a field width, and print the random integer with the specified 
% field width

% EstherCheng
% ENGR 405
% ChengLab7Problem3

%Generate a random integer between 1000 and 2000
randInt = randi([1000, 2000]);

%Prompt user to enter the field width
fieldWidth = input('Please enter a field width: ');

%create a string where the value is the field width entered by the user
result = sprintf("The random number is %%%dd\\n", fieldWidth);

%Pass the string to display in the command window
fprintf(result);
fprintf("%*d\n", fieldWidth, randInt);