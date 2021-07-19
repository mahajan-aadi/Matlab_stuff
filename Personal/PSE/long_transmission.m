%Long
clc;clear all;close all;
%values
r=0.1858; x=2*pi*60*2.6*10^-3; y=2*pi*60*0.012*10^-6; p=50*10^6; 
vr=138*10^3; phi_r=acos(.85)
l=150;
R=r*l; X=x*l; Y=y*l;
%code
vrp=vr/sqrt(3)
ir=p/(3*vrp*cos(phi_r))*(cos(phi_r)-j*sin(phi_r))
z=R+j*X
YZ=j*Y*z
a=1+YZ/2+(YZ)^2/24
d=a
sin_term=(YZ)^(0.5)+((YZ)^(3/2))/6
b=sqrt(z/(Y*j))*sin_term
c=sqrt(Y*j/z)*sin_term
vs=vrp*a+ir*b
is=vrp*c+ir*d
is_abs=abs(is)
vs_l=abs(vs)*sqrt(3)
phi_s=angle(vs)-angle(is)
pf= cos(phi_s)
eff=(p/(3*abs(is)*abs(vs)*pf))*100