%single phase inductance
clc;
clear all;
close all;

% in m
distance=3;
radius=10^-2;
relative_per=1;
km=1;
const=10^-7;

%in H/m
inductance=relative_per*const*(1/2+2*log(distance/radius))
loop_inductance=2*inductance
loop_inductance_per_km=loop_inductance*1000