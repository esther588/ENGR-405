function numCorrect = multiplicationTest(questions)
%multiplicationTest tests from 2 * 2 = 4, 2 * 3 = 6, ... , up to 12 * 12 = 144. 
%Format of Call: multiplicationTest(questions)
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

        %Calculate correct answer
        prod = rand1 * rand2;

        %Display question and wait for user input
        fprintf('%d * %d = ', rand1, rand2);
        userAns = input('');

        %Increment counter if the user input is the correct answer
        if prod == userAns
            numCorrect = numCorrect + 1;
        end
end
end