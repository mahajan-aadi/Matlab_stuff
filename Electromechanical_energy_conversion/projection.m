clc
clear all;
close all;
o=[0 0 0];
m=[0.1 -0.2 -0.1];
n=[-0.2 0.1 0.3];
p=[0.4 0 0.1];
Rm=m-o;
Rn=n-o;
Rp=p-o;
Rnm=Rm-Rn
Rpm=Rm-Rp;
d=dot(Rnm, Rpm)
proj=d/(norm(Rpm))^2*Rpm
angle=acos(d/(norm(Rpm)*norm(Rnm)));
Angle=angle*180/(pi)