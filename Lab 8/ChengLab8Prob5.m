%This script determins the components of the Partial Fraction Expansion
% EstherCheng
% ENGR 405
% ChengLab8Problem4

clear

%Open the file to read
filename = '/Users/esthercheng/desktop/ENGR-405/Lab 8/Data2.xlsx';
fid = fopen(filename, 'r');

if fid == -1
   disp('File open not successful')
else
   %Import the columns as separate variables
   [voltage, time] = readvars(filename);

   %Convert voltage from mV to temperature
   for i = 1:size(voltage)
       voltage(i,:) = voltage(i,:)/60;
   end

   %Convert time from minutes to hours
   for j = 1:size(time)
       time(j,:) = time(j,:)/60;
   end
   
   %Closing the file
   closeresult = fclose(fid);
   if closeresult == 0
      disp('File close successful')
   else
      disp('File close not successful')
   end
end