clc
clear all
close all
format long

u_1=-1;u_2=-1;u_3=-1;
d_1=2;d_2=2;d_3=2;d_4=1;
l_2=-1;l_3=-1;l_4=-1;
b_1=0;b_2=0;b_3=1;b_4=0;

al_1=d_1
be_1=b_1
al_2=d_2-(l_2/al_1)*u_1
al_3=d_3-(l_3/al_2)*u_2
al_4=d_4-(l_4/al_3)*u_3
be_2=b_2-(l_2/al_1)*be_1
be_3=b_3-(l_3/al_2)*be_2
be_4=b_4-(l_4/al_3)*be_3
x4=be_4/al_4
x3=(be_3-u_3*x4)/al_3
x2=(be_2-u_2*x3)/al_2
x1=(be_1-u_1*x2)/al_1