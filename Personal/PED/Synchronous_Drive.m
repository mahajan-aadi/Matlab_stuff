clc
clear all
close all
format long

power=6*10^(6);
Voltage=11*10^(3)/sqrt(3);
Pole=6;
freq=50;
Xs=9;
Rs=0;
Rated_current=50;
cos_phi=0.9;

new_rpm=750;
new_cos_phi=0.8;

Ns=120*freq/Pole
Is=power/(3*Voltage*cos_phi)
new_freq=new_rpm*freq/Ns
new_voltage=Voltage*new_freq/freq
new_power=3*new_voltage*Is*new_cos_phi
omega=2*3.14159*new_rpm/60
new_torque=new_power/omega

new_Xs=Xs*new_freq/freq
new_base_EMF=new_voltage-(Is*(new_cos_phi+j*sin(acos(new_cos_phi)))*j*new_Xs)
[theta,rho] = cart2pol(real(new_base_EMF),imag(new_base_EMF));
disp(""+rho+"<"+rad2deg(theta)+"degree");
EMF=Voltage-(Is*(cos_phi+j*sin(acos(cos_phi)))*j*Xs)
[theta,rho] = cart2pol(real(EMF),imag(EMF));
disp(""+rho+"<"+rad2deg(theta)+"degree");
new_EMF=new_rpm*abs(EMF)/Ns
new_current=abs(new_base_EMF)*Rated_current/new_EMF