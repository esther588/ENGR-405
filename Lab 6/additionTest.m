function numCorrect = additionTest(questions)
%additionTest tests the addition of two random values from 1 to 99. 
%Format of call: additionTest(questions)
%Returns the number of correct questions 

%Set the random number generator seed using the built-in clock
rng('shuffle');

%Initialize counter for correct answers
numCorrect = 0;

%For loop with ranges of number of questions
for i = 1:questions

    %Clear the command window after each question
    clc

    %Random integer from 1 to 99
    rand1 = randi([1, 99]);
    rand2 = randi([1, 99]);
    
    %Calculate correct answer
    sum = rand1 + rand2;

    %Display question and wait for user input
    fprintf('%d + %d = ', rand1, rand2);
    userAns = input('');

    %Increment counter if the user input is the correct answer
    if sum == userAns
        numCorrect = numCorrect + 1;
    end
end
end