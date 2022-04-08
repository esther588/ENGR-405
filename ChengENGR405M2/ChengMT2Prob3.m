%This scripts creates a time variable and then calls three functions,
%getUserInputs, getxandy, and plotResults

%EstherCheng
%ENGR405
%ChengMT2Prob3

flag = 1;

while flag == 1
    %Create a time variable that begins at 0 and ends at 2*pi, incrementing by
    %0.01
    timeVar = 0:0.01:2*pi;
    
    %Call the functions to input, calculate, and plot
    [h, k, a, b] = getUserInputs();
    [xT,yT] = getxandy(a,b,timeVar,h);
    plotResults(xT,yT);

    %Check if the user would like to repeat the program. If yes, loop back
    %to the beginning. If not, exit the program. If user provides more than
    %one character, repeat the question
    flag1 = 1;
    while flag1 == 1
        userInput = input('Would you like to create another ellipse? (y/n) ', 's');
        if isscalar(userInput) == true
            if userInput == 'y' | userInput == 'Y'
                flag = 1;
                flag1 = 0;
            elseif userInput == 'n' | userInput == 'N'
                flag = 0;
                flag1 = 0;
            else
                flag = 0;
                flag1 = 0;
            end
        else
            flag1 = 1;
        end
    end
end