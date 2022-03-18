%Receives three positive integers and determines if they form a Pythagorean triple
function result = isPythTrip(a, b, c)
if(a^2+b^2==c^2)                        %Check if a^2 + b^2 is equal to c^2
    result = true;                      %If true, return 1
else
    result = false;                     %If false, return 0
end
end