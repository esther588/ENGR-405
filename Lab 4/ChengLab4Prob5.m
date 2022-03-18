%This script provides a menu of the volume functions and uses if-else statements 
% to call the appropriate function based on the results of the menu

%
%
%

%Prompt user to choose which volume to calculate
choice = input(['Menu :\n1.Volume of Cube\n2.Voulme of Rectangular' ...
'Prism \n3.Volume of Sphere\n4.Volume of Cylinder\n']);

%Check the user input, call respective function, and print the volume
%result
if(choice == 1)
    length = input('Enter the side length of a cube: ');
    vol = volCube(length);
    fprintf("Volume is %f\n", vol)
elseif(choice == 2)
    length = input('Enter the length of a rectangular prism: ');
    width = input('Enter the width of a rectangular prism: ');
    height = input('Enter the height of a rectangular prism: ');
    vol = volRectPrism(length, width, height);
    fprintf("Volume is %f\n", vol)
elseif(choice == 3)
    radius = input('Enter the radius of a sphere: ');
    vol = volSphere(radius);
    fprintf("Volume is %f\n", vol)
elseif(choice == 4)
    radius = input('Enter the radius of a cylinder: ');
    height = input('Enter the height of a cylinder: ');
    vol = volCylinder(radius, height);
    fprintf("Volume is %f\n", vol)
else
    fprintf("Not a valid choice.\n");
end