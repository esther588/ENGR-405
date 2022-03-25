%This script determins the components of the Partial Fraction Expansion

% EstherCheng
% ENGR 405
% ChengLab8Problem4

clear

%Initialize the numerator and denominator polynomials
num = [2, 14, 50, 62];
den = [1, 5, 11, 15];

%Find the residues, poles, and direct term of partial fraction expansion
[r, p, k] = residue(num, den);

%Display results
fprintf("Coefficients of the quotient:");
disp(k);
fprintf("Roots of the denominator polynomial:\n");
disp(p);
fprintf("Coefficients of the partial fraction expansion terms:\n");
disp(r);

%Recover and display coefficients of the numerator and denominator polynomials
[num, den] = residue(r, p, k);
fprintf("Coefficients of the numerator polynomial: ");
disp(num);
fprintf("Coefficients of the denominator polynomial: ");
disp(den);