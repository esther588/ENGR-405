function fibNum = fib(n)
%fib is a recursive function that receives a value of n and finds the nth
%Fibonacci number
%Format of Call: fib(n)
%Returns the value that is the nth Fibonacci number

if n == 0 || n == 1
    %If n is 0 or 1, initialize fibNum as n
    fibNum = n;
else
    %Recursively call the function
    fibNum = fib(n-2) + fib(n-1);
end
end