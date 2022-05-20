%three phase inductance 

format long
clc;
clear all;
close all;

distance_1=2;
distance_2=3;
distance_3=4;
distance_eq=(distance_1*distance_2*distance_3)^(1/3)
radius=10^-2;

cons=10^-7;

L=cons*(1/2+2*log(distance_eq/radius))