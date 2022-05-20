%MEDIUM T

clc;
clear all;
close all;

%values
r=0.1; x=0.2; y=0.04*10^-4; p=10000*10^3; 
vr=66*10^3; phi_r=acos(.8); l=100;
R=r*l; X=x*l; Y=y*l;
%code
vrp=vr/sqrt(3);
ir=p/(3*vrp*cos(phi_r))*(cos(phi_r)-j*sin(phi_r));
z=R+j*X;
v1=vrp+z/2*ir;
ic=j*v1*Y;
is=ir+ic;
is_abs=abs(is)
vs=v1+is*z/2;
vs_l=abs(vs)*sqrt(3)
phi_s=angle(vs)-angle(is);
pf= cos(phi_s)
eff=(p/(3*abs(is)*abs(vs)*pf))*100