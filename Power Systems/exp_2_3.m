%3-phase different distance

clc;
clear all;
d1=4;
d2=4;
d3=8;
l=100;
V=132*10^3;

d=(d1*d2*d3)^(1/3)
r=1*10^-2;
e0=8.854*10^-12;
c_per_km=(2*pi*e0)/(log(d/r))*1000*l
v_ph=V/(3^(1/2))
f=50;
disp("Xc=1/ans");
Xc=2*pi*f*c_per_km
i=v_ph*Xc