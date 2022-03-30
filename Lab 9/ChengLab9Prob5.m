%This script creates the given anonymous functions and stores them into a
%mat file

% EstherCheng
% ENGR 405
% ChengLab9Problem5

clc
clear

%Create the anonymous functions
d2r = @(x) (x.*pi)./180;
r2d = @(x) (x*180)./pi;
cis = @(x) exp(1j*x);
cisd = @(x) cis(dr2(x));
angled = @(x) r2d(angle(x));

%Create mat file and save all equations into it
mat_file = matfile('equations.mat','Writable',true);
save('equations.mat','d2r', '-append');
save('equations.mat','r2d', '-append');
save('equations.mat','cis', '-append');
save('equations.mat','cisd', '-append');
save('equations.mat','angled', '-append');
