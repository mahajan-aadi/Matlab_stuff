%3-phase
% Q2
clc;
clear all;
d=4;
r=1*10^-2;
e0=8.854*10^-12;
c=(2*pi*e0)/(log(d/r))*100*1000
v_ph=132*1000/(3^(1/2))
f=50;
i=v_ph*2*pi*f*c