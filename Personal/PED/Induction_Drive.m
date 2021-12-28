clc
clear all
close all
format long

V=400/(sqrt(3));
f=50;
Pole=4;
rpm=1370;
Rs=2;
Rr=3;
Xs=3.5;
Xr=3.5;

%Q1
%{
display("part one");
new_f=30;
percent=80;

Ns=120*f/Pole
slip=(Ns-rpm)/Ns
drop_in_speed=Ns-rpm
percent_drop=percent*drop_in_speed/100
new_Ns=120*new_f/Pole
new_rpm=new_Ns-percent_drop

display("Part two");
new_rpm=1000;

new_Ns=new_rpm+drop_in_speed
new_f=Pole*new_Ns/120

display("Part three");
new_rpm=1100;
new_f=40;

new_Ns=120*new_f/Pole
new_drop_in_speed=new_Ns-new_rpm
omega_ms=4*3.14159*f/Pole
Tf=(3/omega_ms)*(V*V*Rr/slip)/((Rs+(Rr/slip))^(2)+(Xr+Xs)^(2))
T=new_drop_in_speed*Tf/drop_in_speed

%Q2
new_f=60;

k=new_f/f
omega_ms=4*3.14159*f/Pole
T_max=(1.5/omega_ms)*(V*V)/(Rs+sqrt((Rs*Rs)+(Xs+Xr)^(2)))
new_T_max=(1.5/(k*omega_ms))*(V*V)/(Rs+sqrt((Rs*Rs)+(k*(Xs+Xr))^(2)))

%Q3
slip=0.04;
new_rpm=850;
ratio=2.2;

Ns=120*f/Pole
rpm=Ns*(1-slip)
omega_ms=4*3.14159*f/Pole
Tl=(3/omega_ms)*(V*V*Rr/slip)/((Rr/slip)^(2)+(Xr*Xr))
k=Tl/(rpm*rpm)

new_Tl=k*new_rpm*new_rpm
new_slip=(Ns-new_rpm)/Ns
syms q
eq=new_Tl-(3/omega_ms)*(V*V*q/new_slip)/((q/new_slip)^(2)+(Xr*Xr));
eval(solve(eq,q)-Rr)
%}
%Q4
f_start=10;

omega_ms=4*3.14159*f/Pole
Tst=(3/omega_ms)*(V*V*Rr)/((Rr+Rs)^(2)+(Xr+Xs)^(2))
Ist=V/sqrt(((Rr+Rs)^(2)+(Xr+Xs)^(2)))
k=f_start/f
new_Tst=(3/omega_ms)*(V*V*Rr/k)/(((Rr+Rs)/k)^(2)+(Xr+Xs)^(2))
new_Ist=V/sqrt((((Rr+Rs)/k)^(2)+(Xr+Xs)^(2)))