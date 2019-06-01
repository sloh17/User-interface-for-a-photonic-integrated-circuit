function [max_current,max_voltage,display] = upload_calibrate_file(txtfile)
% initializing global variables 
global MAXcurrent;
global MAXvoltage;
global calibrationdata;
%*****************************************
fileID = fopen(txtfile,'r');
line_count = 3; %%starts from line 4th of the txtfile
for i = 1 : line_count
    next_line = fgets(fileID);
    % max current case
    if i == 1
       for char_num = 1:length(next_line)
            if next_line(char_num) == '='
                max_current = next_line(char_num+1:end);
                MAXcurrent = str2num(max_current);
            end
       end
    end
    % max voltage case 
    if i == 2
       for char_num = 1:length(next_line)
            if next_line(char_num) == '='
                max_voltage = next_line(char_num+1:end);
                MAXvoltage = str2num(max_voltage);
            end
       end
    end
end
header = next_line;
offset = [];
gain = [];

while next_line ~= -1
    next_line = fgets(fileID);
    if next_line == -1
        
    else
        next_line_num = str2num(next_line);
        offset(line_count-2) = next_line_num(2);
        gain(line_count-2) = next_line_num(3);
        line_count = line_count + 1;
    end
end
display = zeros(length(line_count-3),3);
for i = 1: length(gain)
    display(i,:) = [i,offset(i),gain(i)];
end
calibrationdata = [offset' gain'];
end