function y = pulse(t)
%pulse receives a vector and finds all elements that are less than or equal 
% to -0.5 and greater than or equal to 0.5, changing them to 1. For all other 
% elements, they will be changed to 0
%Format of Call: pulse(t)
%Returns the vector y

%Locate the indices where −0.5 ≤ t ≤0.5
indices = find(t >= -0.5 & t <= 0.5);

%Use the zeros and ones functions to create y
y = zeros(1, length(t));
y(indices) = 1;

end