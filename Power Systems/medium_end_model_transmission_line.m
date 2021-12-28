%MEDIUM END

clc;
clear all;
close all;

%values
r=0.25; x=0.8; y=14*10^-6; p=15000*10^3; 
vr=66*10^3; phi_r=acos(.8); l=100;
R=r*l; X=x*l; Y=y*l;
%code
vrp=vr;
ir=p/(vrp*cos(phi_r))*(cos(phi_r)-j*sin(phi_r));
z=R+j*X;
ic=j*vrp*Y;
is=ir+ic;
is_abs=abs(is)
vs=vrp+is*z;
vs_abs=abs(vs)
phi_s=angle(vs)-angle(is);
pf= cos(phi_s)
eff=(p/(abs(is)*abs(vs)*cos(phi_s)))*100