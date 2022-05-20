%Long
clc;clear all;close all;
%values
r=0.16; x=0.25; y=1.5*10^-6; p=20*10^6; 
vr=110*10^3; phi_r=acos(.8); l=200;
R=r*l; X=x*l; Y=y*l;
%code
vrp=vr/sqrt(3);
ir=p/(3*vrp*cos(phi_r));
z=R+j*X;
main_value=j*Y*z;
a=1+main_value/2+(main_value)^2/24;
d=a;
sin_term=(main_value)^(0.5)+(main_value)^(3/2)/6;
b=sqrt(z/(Y*j))*sin_term;
c=sqrt(Y*j/z)*sin_term;
disp("a="+a);disp("b="+b);disp("c="+c);disp("d="+d);
vs=vrp*a+ir*b;
is=vrp*c+ir*d;
vs_l=abs(vs)*sqrt(3)
is_abs=abs(is)
phi_s=angle(vs)-angle(is);
pf= cos(phi_s)
eff=(p/(3*abs(is)*abs(vs)*pf))*100