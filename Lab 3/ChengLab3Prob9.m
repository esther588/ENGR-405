%This script will plot the trajectory of a particle in flight

%
%
%

%Initial Values
g = -32.2;                              %Acceleration of Gravity (ft/sec^2)

%Prompt user to enter initial velocity and projection angle
prompt1='Please enter the initial velocity (in mph):';
v = input(prompt1) * 5280/3600;
prompt2='Please enter the initial launch angle (in degrees):';
theta = input(prompt2) * pi/180;

%Compute Time of Flight and Horizontal Distance Traveled
tf = -2 * v * sin(theta)/ g;             %Time of Flight (sec)
fprintf('\nTime of Flight; %.2f sec', tf);
xf = v * cos(theta) * tf;               %Horizontal position when
                                        %particle hits the ground
fprintf('\nTotal Distance Traveled: %.2f ft', xf);

%Compute Time Values and Corresponding Particle Position
t = linspace(0,tf,256);                 %Incrementing time values from 0 to tg
x = v*t*cos(theta);                     %Horizontal Position Data
y = (1/2)*g*t.^2 + v*t*sin(theta);      %Vertical Position Data

%Plot Trajectory
plot(x,y), grid, xlabel('Distance (ft)'), ylabel('Height (ft)'), ...
    title('Flight Trajectory')