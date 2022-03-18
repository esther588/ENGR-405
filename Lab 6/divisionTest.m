function numCorrect = divisionTest(questions)
%divisionTest tests from 2 / 2 = 4, 2 / 3 = 6, ... , up to 12 / 12 = 144. 
%Format of Call: divisionTest(questions)
%Returns the number of correct questions

%Set the random number generator seed using the built-in clock
rng('shuffle');

%Initialize counter for correct answers
numCorrect = 0;

%For loop with ranges of number of questions
for i = 1:questions
    
        %Clear the command window after each question
        clc
        
        %Random integer from 2 to 12
        rand1 = randi([2, 12]);
        rand2 = randi([2, 12]);

        while floor(rand1 / rand2) ~= rand1 / rand2
            rand1 = randi([2, 12]);
            rand2 = randi([2, 12]);
        end

        %Calculate correct answer
        quotient = rand1 / rand2;

        %Display question and wait for user input
        fprintf('%d * %d = ', rand1, rand2);
        userAns = input('');

        %Increment counter if the user input is the correct answer
        if quotient == userAns
            numCorrect = numCorrect + 1;
        end
end
end