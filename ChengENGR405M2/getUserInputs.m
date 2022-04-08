function [h, k, a, b] = getUserInputs()
%getUserInputs asks the user for the following values: h, k, a, and b
%Format of Call = getUserInputs()
h = input('Enter the x coordinate of the center of the ellipse: ');
k = input('Enter the y coordinate of the center of the ellipse: ');
a = input('Enter the width from the center of the ellipse: ');
b = input('Enter the height from the center of the ellipse: ');
end