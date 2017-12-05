%{
Duy Nguyen ENGR1300-005 1-5-2017
Problem Statement: Calculate the Mach number and determined whether it is Subsonic, Transonic,Supersonic,Hypersonic 

Variables: 
vSound- speed of sound [m/s]
vObj- speed of object [m/s]
mach - mach number [-]
%}
clear 
clc
% Set variable
vSound=343;%m/s
% Ask the user to enter the speed of object [m/s]
vObj=input('Enter the speed of object [m/s]: ');
if vObj<=0
    % print error if user enter the speed less than or equal to 0
    error('Error:the speed of object must be positive number')
elseif vObj>0
    %Calculate mach number
    mach=vObj/vSound;
    %Check condition of mach number
    if mach <1
        fprintf('Subsonic, Mach number is %.2f.\n',mach);
    elseif mach == 1
        fprintf('Transonic, Mach number is %.2f.\n',mach);
    elseif mach>1 && mach <=5
        fprintf('Supersonic, Mach number is %.2f.\n',mach);
    elseif mach >5
        fprintf('Hypersonic, Mach number is %.2f.\n',mach);
    end 
end
