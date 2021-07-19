%MEDIUM T

clc;
clear all;
close all;

%values
r=0.2; x=0.4; y=2.5*10^-6; p=20*10^6; 
vr=110*10^3; phi_r=acos(.9)
l=100;
R=r*l; X=x*l; Y=y*l;
%code
vrp=vr/sqrt(3)
ir=p/(3*vrp*cos(phi_r))*(cos(phi_r)-j*sin(phi_r))
z=R+j*X
v1=vrp+z/2*ir
ic=j*v1*Y
is=ir+ic
is_abs=abs(is)
vs=v1+is*z/2
vs_l=abs(vs)*sqrt(3)
phi_s=angle(vs)-angle(is)
pf= cos(phi_s)
eff=(p/(3*abs(is)*abs(vs)*pf))*100