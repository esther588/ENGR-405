%This script prompts the user to enter an initial voltage, a resistance, and a 
% capacitance and for beginning and ending values. Graph 
% both plots and abel both axes, include a title, and create a legend

%
%
%

%Prompt user to enter initial voltage, a resistance, and a capacitance
prompt1 = 'Please enter the initial voltage: ';
prompt2 = 'Please enter the initial resistance: ';
prompt3 = 'Please enter the initial capacitance: ';
Vo1 = input(prompt1);
R1 = input(prompt2);
C1 = input(prompt3);
C1 = C1*10^-6;
Vo2 = input(prompt1);
R2 = input(prompt2);
C2 = input(prompt3);

%Calculate time constant
C1 = C1*10^-6;
tau1 = R1*C1;
C2 = C2*10^-6;
tau2 = R2*C2;

%Prompt user for beginning and ending values for the range of a t vector
t0 = input('Enter the start time: ');
tf = input('Enter the end time: ');
t = t0*10^-3:.0001:tf*10^-3;

%Call voltage function
v1 = Voltage(Vo1,tau1,t);
v2 = Voltage(Vo2,tau2,t);

%Graph plots and make the first plot red and the second plot blue
plot(t,v1,'r',t,v2,'b')
xlabel('time (sec)')
ylabel('Voltage (Volts)')
title('Voltage across the capacitor of an RC circuit')
legend('First circuit','Second circuit','location','best')
fprintf('Time constant of first circuit: %f ms\n',tau1/1000)
fprintf('Time constant of second circuit: %f ms\n',tau2/1000)