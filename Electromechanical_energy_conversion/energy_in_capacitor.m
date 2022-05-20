clc;
clear all;
E0=1e-9/(36*pi);
Q=4e-9;
S=0.02;
d=1e-3;
Dn=Q/S
x_step=100;
dx=d/x_step;
w=0;
for k=1:x_step
    x=0.5*dx+(k-1)*dx;
    er=2+2*x*x*1e6;
    dw=0.5*Dn*Dn*S*dx/(er*E0);
    w=w+dw;
end
w
C=Q^2/(2*w)