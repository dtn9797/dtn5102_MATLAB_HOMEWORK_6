%{
Duy Nguyen ENGR1300-005 1-5-2017
Problem Statement: Calculate the mass of the cube 

Variables: 
pwater-density of water [kg/m^3]
SG- specific gravity of gold[-]
mobj- mass of gold [kg]
vobj- volume of gold [m^3]
l- length of one side of the cube [m]
%}
clear 
clc
% Set variables
pwater=1000;
SG=19.3;
% Ask the user to enter the mass of the cube in [kg]
mobj=input('Enter the mass of the cube [kilograms]:');
if mobj<=0
    %print error if users enter mass less than or equal to 0
    error('Error: Mass must be greater than 0 kg');
else 
    %Calculate volume of object im m^3
   vobj=mobj/(SG*pwater);
   %Calculate length of object in m
   lobj=nthroot(vobj,3);
   %Convert length of object into inches
   lobj=lobj/.0254;
   fprintf('The length of one side of the cube is %.2f inches.\n',lobj)
end
   