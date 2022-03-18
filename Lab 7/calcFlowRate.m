function q = calcFlowRate(cD, theta, h)
%displayMenu computes the flow rate Q
%Format of Call: calcFlowRare(cD, theta, h)
%Returns the flow rate

%Initializes gravitation constant
g = 9.8;

%Calculates the flow rate
q = (8/15) * cD.* (h^2.5).* sqrt(2 * g) * tan(theta / 2);
end