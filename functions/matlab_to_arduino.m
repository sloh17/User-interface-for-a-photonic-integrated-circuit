function total_string_array_cur = matlab_to_arduino(CUR)
% this function would send the current values to the power supply 
% using the arduino, sending the data using SPI format. 
% input : CUR is of length 15, 1:15.
VOLT = [10 7 3 4 5 6 7 8 9 10 11 12 13 14 15];
%****************************PACKAGE CUR&VOLT INTO STRING ARRAY***********
% for voltage - channel = 0
% voltage values undefined

for i = 1:length(VOLT)
    char_array_volt = ['s',num2str(i),' 0 ',num2str(round((VOLT(i)/15)*2047)),' e'];
    string_array_volt = convertCharsToStrings(char_array_volt);
    if i == 1
        total_string_array_volt = [string_array_volt];
    else
        total_string_array_volt = [total_string_array_volt,string_array_volt];
    end
end

% for current - channel = 1
for i = 1:length(CUR)
    char_array_cur = ['s',num2str(i),' 1 ',num2str(round((CUR(i)/0.2)*2047)),' e'];
    string_array_cur = convertCharsToStrings(char_array_cur);
    if i == 1
        total_string_array_cur = [string_array_cur];
    else
        total_string_array_cur = [total_string_array_cur,string_array_cur];
    end
end
% testing
% total_string_array_cur(15) = convertCharsToStrings('s4 483 2047 e');
% total_string_array_cur(3) = convertCharsToStrings('s4 483 2047 e');
% total_string_array_cur(7) = convertCharsToStrings('s4 483 2047 e');
%*********************************SEND DATA*******************************
% a = "s4 483 2047 e";
s = serial('COM3');
fopen(s);
pause(2);

for count_volt = 1 : length(total_string_array_volt)
    fprintf(total_string_array_volt(count_volt));
    fprintf("\n");
    fprintf(s,total_string_array_volt(count_volt));
   pause(0.5);
end

for count_cur = 1 : length(total_string_array_cur)
    fprintf(total_string_array_cur(count_cur));
    fprintf("\n");
    fprintf(s,total_string_array_cur(count_cur));
   pause(0.5);
end
fclose(s);

end