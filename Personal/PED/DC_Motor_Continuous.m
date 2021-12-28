clc
clear all
close all
format long

syms Vmain alpha_ Va_
%{ 
single phase fully controlled 

V_=((2*Vmain)/3.14159)*cosd(alpha_);
cos_= (Va_*3.14159)/(2*Vmain);
%}
%{ 
single phase half controlled

V_=((Vmain)/3.14159)*(1+cosd(alpha_));
cos_= ((Va_*3.14159)/(Vmain)-1);
%}

%{ 
three phase fully controlled
 %}
V_=((3*Vmain)/3.14159)*cosd(alpha_);
cos_= (Va_*3.14159)/(3*Vmain);


%{ 
single phase half controlled
V_=((1.5*Vmain)/3.14159)*(1+cosd(alpha_));
cos_= ((Va_*3.14159)/(1.5*Vmain)-1);
%}

%Q
times=1;
T=1200;
T_rated=1500;
%motor
Va=220;
Ia=12.8;
Ra=2;
Vm=230.38;
alpha=60;


%Three phase calculate Vm

disp("rpm given")
E_rated=Va-(Ia*Ra)
E_main=(T/T_rated)*E_rated
V_main=E_main+(Ia*times*Ra)
cos_alp=eval(subs(cos_,[Va_ Vmain],[V_main Vm]))
alp=acosd(cos_alp)
%{
disp("alpha given")
E_rated=Va-(Ia*Ra)
Va=eval(subs(V_,[alpha_ Vmain],[alpha Vm]))
E_main=Va-(Ia*Ra)
T=(E_main/E_rated)*T_rated

disp("alpha and rpm given")
E_rated=Va-(Ia*Ra)
Va=eval(subs(V_,[alpha_ Vmain],[alpha Vm]))
E_main=(T/T_rated)*E_rated
Ia=(Va-E_main)/Ra
%}
%{
disp("alpha and torque given")
E_rated=Va-(Ia*Ra)
Va=eval(subs(V_,[alpha_ Vmain],[alpha Vm]))
i_new=10.34
E_main=Va-(i_new*Ra)
T=(E_main/E_rated)*T_rated
%}