function plotResults(xT,yT)
%plotResults receives the horizontal and vertical values to plot the
%ellipse, with the axes and title labeled, equally spaced axes and a grid
%Format of Call = plotResults(xT,yT)
plot(xT, yT)
xlabel('X Coordinate')
ylabel('Y Coordinate')
title('Path of an Ellipse Using Parametric Equations')
grid ON
axis equal
end