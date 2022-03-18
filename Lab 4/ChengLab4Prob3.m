%This script prompts the user for a response and provides a message
%depending on the input

%
%
%

%Prompt user to enter a character
prompt1 = 'Would you like to continue? ';
response = input(prompt1, 's');

%Check what the user entered and print out a message
switch response
    case {'y', 'Y'}
        fprintf("Ok. Continuing.\n")
    case {'n', 'N'}
        fprintf("OK. Stopping.\n")
    otherwise
        fprintf("Error. Not a valid choice.\n")
end