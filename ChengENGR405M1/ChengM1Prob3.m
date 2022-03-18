value = input('Please enter a value: ');
time = linspace(0, value, 1000);
yT = gety(time);
plot(yT, time, ':m');
title('Graph of y(t)');
xlabel('t');
ylabel('y(t)');
grid ON