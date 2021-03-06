%This script finds the coefficient vector of the polynomial resulting from
%the product, finds the quotient coefficient vector and the remainder
%coefficient vector, and finds the coefficient vector of a polynomial 

% EstherCheng
% ENGR 405
% ChengLab8Problem3

%Create the vectors, A(s) and B(s)
aS = [5, 0, -13, 12];
bS = [5, 4, 8, 4];

%Find the vector P(S) by multipling A(s) and B(s)
pS = conv(aS, bS);

%Display results
fprintf("P(s): ");
disp(pS);

%Create the vectors, N(s) and D(s)
nS = [12, 76, 154, 102];
dS = [4, 20, 24];

%Find the vectors Q(S) and R(s) by dividing N(s) and D(s)
[qS, rS] = deconv(nS, dS);

%Display results
fprintf("Q(s): ");
disp(qS);
fprintf("R(s): ");
disp(rS);

%Create polynomial vector
polynomial = [-2+1j*4, -2-1j*4, -3, -3, -5];

%Find the coefficients and roots
w = poly(polynomial);
wRoots = roots(w);

%Display results
fprintf("Coefficients: ");
disp(w);
fprintf("Roots: ");
disp(wRoots);