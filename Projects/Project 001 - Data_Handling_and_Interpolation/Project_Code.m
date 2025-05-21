clear;
close all;                                             % Close all opened figuers
clc;

filename = 'voltage_current_data.xlsx'; %  Put the file name inside a variable

if exist(filename , 'file') == 2        % Ensure the file is exist 
   try 
disp('Found the file');
disp('Reading ... ');
filedata = readtable(filename);         % Read the file 
disp('Done Reading');                   % Display Done Reading
   catch ME
fprintf(' Error Reading file %s\n',ME.message);         % End the Code if can't read the file  
   end 
else                                                    % End the Code if the file in not exist
fprintf('File %s is Not Found, Please Check\n',filename);
return
end 

voltagedata = filedata.Voltage;                 % put voltages data inside the variable
currentdata = filedata.Current;                 % put current data inside the variable

missingvoltage = isnan(voltagedata);             % put missing voltages data inside vector array
missingcurrent = isnan(currentdata);             % put missing current data inside vector array


if (sum(missingvoltage) | sum(missingcurrent)) == 1     % check if there is any missing data and print it
    fprintf('There is %d Valid Voltage data and %d missing data \n',sum(~missingvoltage),sum(missingvoltage));
    fprintf('There is %d vaild Current data and %d missing data \n',sum(~missingcurrent),sum(missingcurrent));
else 
    fprintf('There is not a missing data');
end

cleanVoltage = voltagedata(~ isnan(voltagedata));  % Clean Voltage Data to be without Nan Values
cleanCurrent = currentdata(~ isnan(currentdata));  % Clean Current Data to be without Nan Values

% Select all given two points data for the Voltage and Current 
sortedvoltage = voltagedata((~ isnan(voltagedata)) & (~ isnan(currentdata)));
sortedcurrent = currentdata((~ isnan(voltagedata)) & (~ isnan(currentdata)));


x_interp= -17.3 : 0.1 : 0.9;                        %Interpolation required range 

% Make Interpolation for the voltages data as an independent to current 
% data as a dependant values for te specificed range
datainterp = interp1(sortedvoltage, sortedcurrent, x_interp,'linear','extrap');

% Open file to save the Interpolated data
fileID= fopen('Interpolated_data.txt','w');
if fileID == -1                                     % if the file is not exist
    error('Failed to open file for writing.');
end

% Save the Interpolated data
fprintf(fileID, 'Voltage(V)\tCurrent(A)\n');

for i=1 : length(x_interp)
    fprintf(fileID, '%0.2f\t\t%0.2f\n',x_interp(i),datainterp(i));
end

% Close the file
fclose(fileID);
fprintf('Interpolated data saved to: interpolated_data.txt\n');

% Plot the Original data with blue and Interplolated data with Red Line
figure;
plot(sortedvoltage, sortedcurrent, 'bx');
xlabel('Voltage (V)');
ylabel('Current (A)');
title('Voltage Current Curve');
hold on;
plot(x_interp, datainterp, 'r-');
legend('Orignal data','Interpolation Data');




