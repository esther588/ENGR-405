function printGrade(numCorrect, questions, percent, letterGrade)
%printGrade prints the number correct out of the total number of questions
% and the formatted percent and the letter grade. 
%Format of Call: printGrade(numCorrect, questions, percent, letterGrade)

%Display how many answers were correct out of the total number of questions,
% the formatted percentage and the letter grade
fprintf('There were %d correct answers out of %d questions\n', numCorrect, questions);
fprintf('The percentage was %.2f%%\n', percent);
fprintf('Letter grade is %c \n', letterGrade);
end