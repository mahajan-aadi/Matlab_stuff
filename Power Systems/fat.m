clc;
clear all;
close all;

%values
r=20; x=60; y=6.28*10^-4; p=120*10^6; 
vr=220*10^3; phi_r=acos(.85);
l=1;
R=r*l; X=x*l; Y=y*l;
%code
vrp=vr/sqrt(3);
ir=p/(3*vrp*cos(phi_r))*(cos(phi_r)-j*sin(phi_r));
z=R+j*X;
ic1=j*vrp*Y/2;
il=ir+ic1;
vs=vrp+z*il;
vs_l=abs(vs)*sqrt(3)
ic2=j*vs*Y/2;
is=ic2+il;
is_abs=abs(is)
phi_s=angle(vs)-angle(is);
pf= cos(phi_s)
ps=3*abs(is)*abs(vs)*pf
eff=(p/(ps))*100
reg=((abs(vs)-vrp)/vrp)*100