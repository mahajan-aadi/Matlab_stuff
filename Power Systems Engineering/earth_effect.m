%earth effect

clc;
clear all;
d=3.5;
r=0.001;
h=8;
e0=8.854*10^-12;
c_per_km=(pi*e0)/log(d/(r*(1+((d^2)/(4*h^2)))^(1/2)))*10^3
cn=2*c_per_km