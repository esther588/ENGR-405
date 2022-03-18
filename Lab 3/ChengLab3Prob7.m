%Prompt user to enter outer and inner radius
prompt1 = 'Enter the outer radius in centimeters';
rad_outer = input(prompt1); 
prompt2 = 'Enter the inner radius in centimeters'; 
rad_inner = input(prompt2); 

%Calculate volume and print the result
V = (4/3)*pi*(rad_outer^3-rad_inner^3); 
disp 'The volume of the hollow sphere is '; 
fprintf("%.2f", V); 
disp ' cm^3.'; 