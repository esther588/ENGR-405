%Prompt user to enter maximum positive value
prompt1='Enter the maximum positive value to be used for graphing:';
xmax=input(prompt1);

%Create and plot vectors
x=-xmax:0.1:xmax;
y1=2.*sin(x);
plot(x, y1, '*g', 'LineWidth',2)
y2=cos(2.*x);
plot(x, y2, '+b', 'LineWidth',2)

%Label x-axis and y-axis and provide a title
xlabel('x');ylabel('y');
title('Plot of 2sin(x) and cos(2x')

%Provide legend and add a grid
legend('y=2sin(x)', 'y=cos(2x)')
grid on