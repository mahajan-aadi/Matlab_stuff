%short

clc;
clear all;
close all;

%values
r=10; x=15; p=1100*10^3; vr=33*10^3; phi_r=acos(.8)

%code
ir=p/(vr*cos(phi_r))*(cos(phi_r)-j*sin(phi_r))
z=r+j*x
vs=vr+ir*z
vs_mag=abs(vs)
is=ir
is_abs=abs(is)
phi_s=angle(vs)+abs(phi_r)
pf= cos(phi_s)
eff=(p/(abs(is)*abs(vs)*cos(phi_s)))*100