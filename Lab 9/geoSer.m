function gs = geoSer(r, varargin)
%geoSer receives a value for r and calculate the sum of the geometric
%series. If a second argument is passed to the function, it is the value 
% of n; otherwise, a random integer is generated
%Format of Call: geoSer(r, varagin)
%Returns the sum of the geometric series

%Check if number of input argument is 1
if nargin == 1
    %Generates a random integer in the range from 5 to 30
    n = randi([5, 30]);
else
    %Initializes n to first element of varargin
    n = varargin{1};
end

gs = 1 + r;

%Calculate the sum of the geometric series, starting at 2 and going
%until n
for i = 2:n
    gs = gs + r^i;
end

end