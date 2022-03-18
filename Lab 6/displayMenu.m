function [userChoice, questions] = displayMenu()
%displayMenu includes a Menu to choose one of the four arithmetic tests 
% and asks how many questions the user would like to have for the test. 
%Format of Call: displayMenu()
%Returns the index of the user's choice and number of questions

userChoice = menu("Choose one of the four arithmetic tests.", ...
    "Multiplication", "Addition", "Subtraction", "Division");
questions = input('How many questions will the test have? ');
end