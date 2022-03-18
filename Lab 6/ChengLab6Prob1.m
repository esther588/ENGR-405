%This script tests second or third grade students on basic arithmetic

% EstherCheng
% ENGR 405
% ChengLab6Problem1

%Flag variable to indicate whether program should restart or not
flag = 1;
while flag == 1

    %Calls to display a menu to choose one of four arithmetic tests
    [userChoice, questions] = displayMenu();

    %Depending on the user's choice, call the respective arithmetic
    %function
    switch userChoice
        case 1
            numCorrect = multiplicationTest(questions);
        case 2
            numCorrect = additionTest(questions);
        case 3
            numCorrect = subtractionTest(questions);
        case 4
            numCorrect = divisionTest(questions);
    end

    %Calculate the grade in percent and letter
    [percent, letterGrade] = calcGrade(numCorrect, questions);

    %Display the grades and number of questions
    printGrade(numCorrect, questions, percent, letterGrade);

    %Prompts user to enter whether they would like to retake the test
    prompt1 = 'Would you like to retake the test? ';
    userInput = input(prompt1, 's');

    %Assigns flag logical value depending on user input
    if userInput == 'y' | userInput == 'Y'
        flag = 1;
    else
        flag = 0;
    end
end