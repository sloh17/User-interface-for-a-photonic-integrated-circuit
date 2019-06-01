function [x1,y1,x2,y2,default] = defineMZIphasetocurrentrelation(MZI_number,phase)
%****************************************************************
% % For each MZI input unique phase to current relationship equation
% % input forward and inverse equation
%****************************************************************
% retrieving global variables
global MAXcurrent;
global MAXvoltage;
global calibrationdata;
% local variables
Imax = 0.2;
I = linspace(0,Imax,2000);
x1 = 0;
y1 = 0;
x2 = 0;
y2 = 0;
switch MZI_number 
    case 1  
        % MZI 1 - phase to current relation
        % sine wave
        default = 0;
        Pi = 0.5+0.5*sind((I*360/Imax) - calibrationdata(MZI_number,1));    % forward equation
        Iphase = I(find(abs(Pi-phase(MZI_number))< 0.001,1,'first'));     % inverse equation
        
    case 2
        % MZI 2 - phase to current relation
        % sawtooth wave form
        default = 0;
        Pi = (1 + sawtooth(2*pi*30*I - calibrationdata(MZI_number,1))) * 0.5;                            % forward equation
        Iphase = I(find(abs(Pi-phase(MZI_number))< 0.001,1,'first'));    % inverse equation
        
    case 3
        % MZI 3 - phase to current relation
        % tangent curve
        default = 0;
        Pi = (tand(I*360/Imax)+1000)/2000;                              % forward equation
        Iphase = I(find(abs(Pi-phase(MZI_number))< 0.1,1,'first'));     % inverse equation
        
    case 4
        % MZI 4 - phase to current relation
        % apply negative gain
        default = 0;
        Pi = calibrationdata(MZI_number,2)*(0.5+0.5*sind((I*360/Imax)- calibrationdata(MZI_number,1)))+0.25;     % forward equation
        Iphase = I(find(abs(Pi-phase(MZI_number))< 0.001,1,'first'));      % inverse equation
    
    case 5
        % MZI 5 - phase to current relation
        % apply positive gain
        default = 0;
        Pi = calibrationdata(MZI_number,2)*(0.5+0.5*sind((I*360/Imax)- calibrationdata(MZI_number,1)))-((calibrationdata(MZI_number,2)-1)/2);     % forward equation
        Iphase = I(find(abs(Pi-phase(MZI_number))< 0.001,1,'first'));      % inverse equation
    case 6
        % MZI 6 - phase to current relation
        % apply offset to sine MZI
        default = 0;
        Pi = 0.5+0.5*sind((I*360/Imax)- calibrationdata(MZI_number,1));     % forward equation
        Iphase = I(find(abs(Pi-phase(MZI_number))< 0.001,1,'first'));      % inverse equation
        
    case 7
        % MZI 7 - phase to current relation
        % default function used
        default = 1;
        Pi = 0.5+0.5*sind((I*360/Imax) - calibrationdata(MZI_number,1));    % forward equation
        Iphase = I(find(abs(Pi-phase(MZI_number))< 0.001,1,'first'));     % inverse equation
        
    case 8
        % MZI 8 - phase to current relation
        % default function used
        default = 1;
        Pi = 0.5+0.5*sind((I*360/Imax) - calibrationdata(MZI_number,1));    % forward equation
        Iphase = I(find(abs(Pi-phase(MZI_number))< 0.001,1,'first'));     % inverse equation
    case 9
        % MZI 9 - phase to current relation
        % default function used
        default = 1;
        Pi = 0.5+0.5*sind((I*360/Imax) - calibrationdata(MZI_number,1));    % forward equation
        Iphase = I(find(abs(Pi-phase(MZI_number))< 0.001,1,'first'));     % inverse equation
    case 10
        % MZI 10 - phase to current relation
        % default function used
        default = 1;
        Pi = 0.5+0.5*sind((I*360/Imax) - calibrationdata(MZI_number,1));    % forward equation
        Iphase = I(find(abs(Pi-phase(MZI_number))< 0.001,1,'first'));     % inverse equation
    case 11
        % MZI 11 - phase to current relation
        % default function used
        default = 1;
        Pi = 0.5+0.5*sind((I*360/Imax) - calibrationdata(MZI_number,1));    % forward equation
        Iphase = I(find(abs(Pi-phase(MZI_number))< 0.001,1,'first'));     % inverse equation
    case 12
        % MZI 12 - phase to current relation
        % default function used
        default = 1;
        Pi = 0.5+0.5*sind((I*360/Imax) - calibrationdata(MZI_number,1));    % forward equation
        Iphase = I(find(abs(Pi-phase(MZI_number))< 0.001,1,'first'));     % inverse equation
    case 13
        % MZI 13 - phase to current relation
        % default function used
        default = 1;
        Pi = 0.5+0.5*sind((I*360/Imax) - calibrationdata(MZI_number,1));    % forward equation
        Iphase = I(find(abs(Pi-phase(MZI_number))< 0.001,1,'first'));     % inverse equation
    case 14
        % MZI 14 - phase to current relation
        % default function used
        default = 1;
        Pi = 0.5+0.5*sind((I*360/Imax) - calibrationdata(MZI_number,1));    % forward equation
        Iphase = I(find(abs(Pi-phase(MZI_number))< 0.001,1,'first'));     % inverse equation
    case 15
        % MZI 15 - phase to current relation
        % default function used
        default = 1;
        Pi = 0.5+0.5*sind((I*360/Imax) - calibrationdata(MZI_number,1));    % forward equation
        Iphase = I(find(abs(Pi-phase(MZI_number))< 0.001,1,'first'));     % inverse equation
end

x1 = I;
y1 = Pi;
x2 = Iphase;
y2 = phase(MZI_number);
end