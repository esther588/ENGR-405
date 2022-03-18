function [percent, letterGrade] = calcGrade(numCorrect,questions)
%calcGrade calculates the grade in percent and associated letter grade. 
%Format of call: calcGrade(numCorrect,questions)
%Returns the number of correct questions 

%Calculates percentage of correct answers
    percent = (numCorrect/questions) * 100;

    %Based on the percentage, letter grades are provided and displayed
    if percent >= 90 && percent <= 100
        letterGrade = 'A';
    elseif percent >= 80 && percent < 90
        letterGrade = 'B';
    elseif percent >= 70 && percent < 80
        letterGrade = 'C';
    elseif percent >= 60 && percent < 70
        letterGrade = 'D';
    elseif percent >= 0 && percent < 60
        letterGrade = 'F';
    end
end