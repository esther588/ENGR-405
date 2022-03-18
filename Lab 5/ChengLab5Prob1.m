%This script tests second or third grade students on multiplication from 2 * 2 = 4 up to 12 * 12 = 144

% EstherCheng
% ENGR 405
% ChengLab5Problem1

%Flag variable to indicate whether program should restart or not
flag = 1;
while flag == 1
    %Set the random number generator seed using the built-in clock
    rng('shuffle');

    %Welcome Message 
    disp('Welcome');

    %Prompt user to enter number of questions
    numQs = input('Enter number of questions: ');

    %Initialize counter for correct answers
    counter = 0;

    %For loop with ranges of number of questions
    for i = 1:numQs
        %Random integer from 2 to 12
        rand1 = randi([2, 12]);
        rand2 = randi([2, 12]);

        %Calculate correct answer
        prod = rand1 * rand2;

        %Display question and wait for user input
        fprintf('%d * %d = ', rand1, rand2);
        userAns = input('');

        %Increment counter if the user input is the correct answer
        if prod == userAns
            counter = counter + 1;
        end

        %Clear the command window after each question
        clc
    end

    %Calculates percentage of correct answers
    percentage = (counter/numQs) * 100;

    %Display how many answers were correct and provides a formatted
    %percentage
    fprintf('There were %d correct answers \n', counter);
    fprintf('The percentage was %.2f%%\n', percentage);

    %Based on the percentage, letter grades are provided and displayed
    if percentage >= 90 && percentage <= 100
        grade = 'A';
    elseif percentage >= 80 && percentage < 90
        grade = 'B';
    elseif percentage >= 70 && percentage < 80
        grade = 'C';
    elseif percentage >= 60 && percentage < 70
        grade = 'D';
    elseif percentage >= 0 && percentage < 60
        grade = 'F';
    end
    fprintf('Letter grade is %c \n', grade);

    %Prompts user to enter whether they would like to retake the test
    prompt1 = 'Would you like to retake the test? ';
    userInput = input(prompt1, 's');

    %Assigns flag logical value depending on user input
    if userInput == 'y' || userInput == 'Y'
        flag = 1;
    else
        flag = 0;
    end
end
