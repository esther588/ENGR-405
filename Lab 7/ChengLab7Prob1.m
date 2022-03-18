%This script computes the flow rate Q for input variables Cd, theta and h

% EstherCheng
% ENGR 405
% ChengLab7Problem1

% Test values for input variables, Cd, theta, and h
cD = [0.59, 0.62];
theta = [65, 40];
h = [3.1, 2.4];

%Iterate over all the possible values for input variables
for i = cD
    %Iterating over theta 
    for j = theta
        % Iterating over h 
        for k = h
            % Call the calcFlowRate function to calculate Q
            q = calcFlowRate(i, j, k);

            %Print the input and output values for the flow rate function
            fprintf("Value of Q at Cd: %.3f, h: %.2f and theta: %d is %f.\n", i, j, k, q);
        end
    end
end