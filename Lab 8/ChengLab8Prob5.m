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
   
   %Find maximum and minimum voltage readings
   minVolt = min(voltage);
   maxVolt = max(voltage);

   %Convert corresponding temperatures to Fahrenheit
   minTemp = 10*(9/5)+32;
   maxTemp = 30*(9/5)+32;

   %Find slope and y-intercept
   slope = (maxVolt-minVolt)/(maxTemp-minTemp);
   yInt = minVolt-minTemp*slope;

   %Convert voltage from mV to temperature
   for i = 1:size(voltage)
       voltage(i,:) = (voltage(i,:)-yInt)/slope;
   end

   %Convert time from minutes to hours
   for j = 1:size(time)
       time(j,:) = time(j,:)/60;
   end

   %Plot graph, set ranges and tick marks for x and y axis, and include title
   %%
   plot(time, voltage);
   xticks(0:3:24);
   yticks(30:10:100);
   xlabel('Time (Hours)');
   ylabel('Temperature (F)');
   title('Temperature (F) vs. Time (Hours)');
   
   %Closing the file
   closeresult = fclose(fid);
   if closeresult == 0
      disp('File close successful')
   else
      disp('File close not successful')
   end
end