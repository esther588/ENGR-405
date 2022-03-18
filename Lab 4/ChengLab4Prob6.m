%This script provides a menu in a dialog box for the user and uses switch-case to call the appropriate 
% functions based on the results of the dialog box 

%
%
%

%Create a menu using dialog box for the user to choose which volume to calculate
msg = "Choose which volume to calculate";
list = {'Cube', 'Rectangular', 'Sphere', 'Cylinder'};
choice = listdlg('PromptString', msg, 'SelectionMode','single', 'ListString', list);

%Check the input, call the needed functions and print out the volumes
switch choice
    case 1
        length = input('Enter the side length of a cube: ');
        vol = volCube(length);
        fprintf("Volume is %f\n", vol)
    case 2
        length = input('Enter the length of a rectangular prism: ');
        width = input('Enter the width of a rectangular prism: ');
        height = input('Enter the height of a rectangular prism: ');
        vol = volRectPrism(length, width, height);
        fprintf("Volume is %f\n", vol)
    case 3
        radius = input('Enter the radius of a sphere: ');
        vol = volSphere(radius);
        fprintf("Volume is %f\n", vol)
    case 4
        radius = input('Enter the radius of a cylinder: ');
        height = input('Enter the height of a cylinder: ');
        vol = volCylinder(radius, height);
        fprintf("Volume is %f\n", vol)
    otherwise
        fprintf("Not a valid choice.\n");
end