function gs = geoSer(r, varargin)
%geoSer receives a value for r and calculate the sum of the geometric
%series. If a second argument is passed to the function, it is the value 
% of n; otherwise, the function generates a random integer
%Format of Call: geoSer(r, varagin)
%Returns the sum of the geometric series

%Check if varargin is empty or not
if size(varargin) == 0
    %Generates a random integer in the range from 5 to 30
    n = randi([5, 30]);
else
    n = varargin(1,1);
end

gs = 1 + r;

for i=2:n
    gs = gs + r^i;
end

end