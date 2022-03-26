function y = pulse(t)
%pulse receives a vector and finds all elements that are less than or equal 
% to -0.5 and greater than or equal to 0.5, changing them to 1. For all other 
% elements, they will be changed to 0
%Format of Call: pulse(t)
%Returns the vector y

%Locate the indices where −0.5 ≤ t ≤0.5
indices = find(t >= -0.5 & t <= 0.5);

%Use the zeros function to create vector y with the same number of elements
%as t
y = zeros(1, length(t));

%Change all elements at specific indices to 1
y(indices) = 1;

end