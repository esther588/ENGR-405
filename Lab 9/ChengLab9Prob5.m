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
fileName = 'equations.mat';
mat_file = matfile(fileName,'Writable',true);
save(fileName,'d2r', '-append');
save(fileName,'r2d', '-append');
save(fileName,'cis', '-append');
save(fileName,'cisd', '-append');
save(fileName,'angled', '-append');
