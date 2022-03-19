%This script determins the components of the Partial Fraction Expansion
% EstherCheng
% ENGR 405
% ChengLab8Problem4

clear

%Open the file to real
filename = '/Users/esthercheng/desktop/ENGR-405/Lab 8/Data2.xlsx';
fid = fopen(filename, 'r');

if fid == -1
   disp('File open not successful')
else
   %Reading from File
   [voltage, time] = readvars(fid);
   
   %Closing the File
   closeresult = fclose(fid);
   if closeresult == 0
      disp('File close successful')
   else
      disp('File close not successful')
   end
end