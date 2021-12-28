clc
clear all
close all
format long

V=230;
I=200;
rpm=960;
r=0.02;
R=2;

%Q1
display("part 1");
new_rpm=350;

E=V-I*r
new_E=new_rpm*E/rpm
new_V=new_E+I*r
del=new_V/V

display("part 2");
new_rpm=350;

E=V-I*r
new_E=new_rpm*E/rpm
new_V=new_E-I*r
del=new_V/V

display("part 3");
del=0.95;
times=2;

E=V-I*r
new_V=del*V
new_E=new_V+times*I*r
new_rpm=new_E*rpm/E
power=new_V*times*I

display("part 4");
new_rpm=1200;

%Q2
display("part 1");
new_rpm=600;
times=2;

E=V-I*r
new_E=new_rpm*E/rpm
del=1-(((new_E/(times*I))-r)/2)

display("part 2");
del=0.6;
times=2;

new_E=(times*I*(1-del)*R)+r
new_rpm=new_E*rpm/E