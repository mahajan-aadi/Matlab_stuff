clc;clear all;close all;
C_I=80;
C_pf=acos(0.9);
C_m=1000;
B_I=120;
B_pf=acos(0.8);
B_m=1000;
r=0.05;x=0.1;
v_sending=230;

Z_ac=(r+j*x)*C_m/1000
Z_bc=(r+j*x)*B_m/1000
I1=C_I*(cos(C_pf)-j*sin(C_pf))
I2=B_I*(cos(B_pf)-j*sin(B_pf))
I_CB=I2
I_AC=I1+I2
V_CB=Z_bc*I_CB
V_AC=Z_ac*I_AC
V_DISTRIBUTER=V_CB+V_AC
V_MAG_DROP=abs(V_DISTRIBUTER)
V_sending=v_sending+V_DISTRIBUTER
V_MAG_sending=abs(V_sending)
phase_va_vb=angle(V_sending)
