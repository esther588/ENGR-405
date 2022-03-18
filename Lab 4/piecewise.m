%Receives a scalar x-value for the following piecewise-function and returns f(x)
function fx = piecewise(x)
if(x < -2)                  %Check if x is less than -2
    fx = -2*x+1;
elseif(x < 3 && x >= -2)    %Check if x is less than 3 and greater than or equal to -2
    fx = 5;
elseif(x >= 3)              %Check is x is greather than or equal to 3
    fx = 5*exp(-(x-3));
end
end