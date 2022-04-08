function result = recur(term)
%recur is a recursive function that receives a user-defined input and based
%on a given definiton calculates a value and will display it
%Format of Call = recur(term)

%Check if input is greater than zero
if term > 0
    %Base condition if input is 1
    if term == 1
        result = 2;
    %Base condition if input is 2
    elseif term == 2
        result = -1;
    %Base condition if input is 3
    elseif term == 3
        result = -3;
    else
        result = 3*recur(term-1)+2*recur(term-2)+recur(term-3);
    end
end
end