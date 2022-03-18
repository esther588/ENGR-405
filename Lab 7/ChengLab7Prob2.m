%This script creates complex numbers and plots them

% EstherCheng
% ENGR 405
% ChengLab7Problem2

%Clear previous plots
clear

%Initialize all the given complex numbers
zA = -3 + j * 2;
zB = -1 + j;
z1 = 2*zA - zB;
z2 = -2 * zA;
z3 = conj(zB);
z4 = zA * exp(j * (pi / 2));
z5 = zA * zB;
z6 = zB / zA;
z7 = sqrt(zA);

%Plot complex numbers by creating code cells
hold on;
os = 0.2;
%%
plot(zA, 'r+');
text(real(zA)+os, imag(zA), 'zA');
%%
plot(zB, 'r+');
text(real(zB)+os, imag(zB), 'zB');
%%
plot(z1, 'r+');
text(real(z1)+os, imag(z1), 'z1');
%%
plot(z2, 'r+');
text(real(z2)+os, imag(z2), 'z2');
%%
plot(z3, 'r+');
text(real(z3)+os, imag(z3), 'z3');
%%
plot(z4, 'r+');
text(real(z4)+os, imag(z4), 'z4');
%%
plot(z5, 'r+');
text(real(z5)+os, imag(z5), 'za');
%%
plot(z6, 'r+');
text(real(z6)+os, imag(z6), 'z6');
%%
plot(z7, 'r+');
text(real(z7)+os, imag(z7), 'z7');

%Scale the two axes
axis([-5 5 -5 5]);

%Label the axes and create the title
xlabel('Real Part');
ylabel('Imaginary Part');
title('Real vs. Imaginary');