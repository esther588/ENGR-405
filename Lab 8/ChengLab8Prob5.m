%This script determins the components of the Partial Fraction Expansion
% EstherCheng
% ENGR 405
% ChengLab8Problem4

clear

%Open the file to Read
fid = fopen('/Users/esthercheng/desktop/ENGR 405/Lab 8/aveTemp.dat', 'r');

if fid == -1
   disp('File open not successful')
else
   %Reading from File
   newline = fgetl(fid);
   i = 1;
   a(i) = string(newline);
   while newline ~= -1
       i = i + 1;
       newline = fgetl(fid);
       a(i) = string(newline);
   end
   
   %Closing the File
   closeresult = fclose(fid);
   if closeresult == 0
      disp('File close successful')
   else
      disp('File close not successful')
   end
end