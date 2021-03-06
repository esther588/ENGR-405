%This script finds the value of each of the given complex numbers in exponential form

% EstherCheng
% ENGR 405
% ChengLab8Problem2

clear

%Create the complex numbers
const3_1 = -8*sqrt(3);
const3_2 = 8;
z3 = const3_1+1j*const3_2;
const4_1 = -5;
const4_2 = 5;
z4 = const4_1-1j*const4_2;

%Use the magnitude formula on the constants
z3Mag = sqrt((const3_1)^2+(const3_2)^2);
z3Mag = abs(z3Mag);
z4Mag = sqrt((const4_1)^2+(const4_2)^2);
z4Mag = abs(z4Mag);

%Find the inverse tangents of the constants
theta3 = atan(const3_2/const3_1);
theta4 = atan(const4_2/const4_1);

%Combine everything to create the exponential form
z3Exp = z3Mag*exp(1j*theta3);
z4Exp = z4Mag*exp(1j*theta4);

%Display the results
fprintf("Z3 in exponential form: ");
disp(z3Exp);
fprintf("Z4 in exponential form: ");
disp(z4Exp);