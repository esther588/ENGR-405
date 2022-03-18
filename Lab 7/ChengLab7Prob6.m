%This script prompts the user for the real and imaginary parts and stores 
% them in a structure variable. The complex number is then printed out

% EstherCheng
% ENGR 405
% ChengLab7Problem6

%Prompt user to enter values for the real and imaginary parts and stores values in structure variables
complex.realPart = input('Please enter the real part of the complex number: ');
complex.imagPart = input('Please enter the imaginary part of the complex number: ');

%Prints the complex number in the form a + ib, adjusting when the imaginary part is negative
if complex.imagPart >= 0
    fprintf("The complex number is %.1f + i%.1f\n", complex.realPart, complex.imagPart);
else
    fprintf("The complex number is %.1f - i%.1f\n", complex.realPart, -1 * complex.imagPart);
end