function fibNum = fib(n)
%fib is a recursive function that receives a value of n and finds the nth
%Fibonacci number
%Format of Call: fib(n)
%Returns the value that is the nth Fibonacci number

if n == 1
    %If n is 1, initialize fibNum as 0
    fibNum = 0;
elseif n == 2
    %If n is 2, initialize fibNum as 1
    fibNum = 1;
else
    %Recursively call the function
    fibNum = fib(n-2) + fib(n-1);
end
end