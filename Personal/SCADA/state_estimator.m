clc
clear all
close all
format long

H=[25/6 -25/6;50/19 0;0 -50/13];
z=[0.54;0.2;0.33]; %M12,M13,M23
%M12=(1/x12)*(T1-T2)=== [T][z]=[H]

%let errors be 0.01; ===(sigma)
S=0.01;
R=eye(size(H,1))*(S*S);

%xˆ = [((H^T)(R^-1)(H )]^(-1)*[H ]^(T)*[R^(-1)]*z  

part_1=transpose(H)*inv(R)*H
part_2=inv(part_1)
x=part_2*transpose(H)*inv(R)*z
