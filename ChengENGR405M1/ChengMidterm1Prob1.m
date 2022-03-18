age = input('Enter your age: ');
if(age > 65 && age < 100)
    fprintf("Are you retired, yet?\n");
elseif(age == 65 || age == 100)
    fprintf("Such a great age!\n");
elseif(age >= 18 && age < 65)
    fprintf("Are you working hard?\n");
else
    fprintf("You are %.1f years old!\n", age);
end