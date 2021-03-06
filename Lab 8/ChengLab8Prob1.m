%This script finds the value of each of the given complex numbers in rectangular form

% EstherCheng
% ENGR 405
% ChengLab8Problem1

clear

%Create the complex numbers
x1 = (3*pi)/4;
const1 = 2*sqrt(2);
z1 = const1*exp(1j*x1);
x2 = pi/4;
const2 = 4*sqrt(2);
z2 = const2*exp(1j*x2);

%Convert the complex numbers to rectangular form
z1Rect = const1*(cos(x1)+1j*sin(x1));
z2Rect = const2*(cos(x2)+1j*sin(x2));

%Display the results
fprintf("Z1 in rectangular form: ");
disp(z1Rect);
fprintf("Z2 in rectangular form: ");
disp(z2Rect);