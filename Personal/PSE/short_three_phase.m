%short

clc;
clear all;
close all;

%values
r=1.8; x=4; p=5000*10^3; vr=11*10^3; phi_r=acos(.8)

%code
vrp=vr/sqrt(3)
ir=p/(3*vrp*cos(phi_r))*(cos(phi_r)-j*sin(phi_r))
z=r+j*x
vs=vrp+ir*z
is=ir
is_abs=abs(is)
vs_l=abs(vs)*sqrt(3)
phi_s=angle(vs)+abs(phi_r)
pf= cos(phi_s)
eff=(p/(3*abs(is)*abs(vs)*cos(phi_s)))*100
reg=((abs(vs)-vrp)/vrp)*100