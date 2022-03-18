%This script asks the user for an x value, calls piecewise, and then provides a formatted response 
% that includes the answer

%
%
%

%Prompt user for a value
prompt1 = 'Enter an x value: ';
val = input(prompt1);

%Call piecewise function and print the result
result = piecewise(val);
fprintf('%f\n', result);