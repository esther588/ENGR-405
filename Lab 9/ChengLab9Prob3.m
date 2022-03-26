%This script computes and generates labeled plots for the given 
% functions using 401 points over the range −3 ≤ t ≤ 3

% EstherCheng
% ENGR 405
% ChengLab9Problem3

%Create vector over the range of -3 and 3 with 401 elements
t = linspace(-3, 3, 401);

y1 = pulse(t/4);
y2 = pulse(t/4).*sin(4*pi*t);

%Plot the functions as two vertically oriented subplots
subplot(2, 1, 2);
plot(t, y1);
grid on;
xlabel('t');
ylabel('y1');

subplot(2, 1, 2);
plot(t, y2);
grid on;
xlabel('t');
ylabel('y2');