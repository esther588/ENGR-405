function [xT,yT] = getxandy(a,b,t,h)
%getxandy receives the inputs a, b, t, and h and calculates both x(t) and
%y(t) and returns them
%Format of Call = getxandy(a,b,t,h)
xT = a*cos(t)+h;
yT = b*sin(t)+h;
end