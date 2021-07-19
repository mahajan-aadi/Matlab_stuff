clc
clear all
close all
format long

syms x y z
f1=z;
f2=x*z^2-y^2;
x0=0;
y0=1;
z0=0;
h=0.2;

k_1 = double(h*subs(f1,{x,y,z},{x0,y0,z0}))
l_1 = double(h*subs(f2,{x,y,z},{x0,y0,z0}))
k_2 = double(h*subs(f1,{x,y,z},{x0+h/2,y0+k_1/2,z0+l_1/2}))
l_2 = double(h*subs(f2,{x,y,z},{x0+h/2,y0+k_1/2,z0+l_1/2}))
k_3 = double(h*subs(f1,{x,y,z},{x0+h/2,y0+k_2/2,z0+l_2/2}))
l_3 = double(h*subs(f2,{x,y,z},{x0+h/2,y0+k_2/2,z0+l_2/2}))
k_4 = double(h*subs(f1,{x,y,z},{x0+h,y0+k_3,z0+l_3}))
l_4 = double(h*subs(f2,{x,y,z},{x0+h,y0+k_3,z0+l_3}))
y1 = double(y0 + (1/6)*(k_1+2*k_2+2*k_3+k_4) )
z1 = double(z0 + (1/6)*(l_1+2*l_2+2*l_3+l_4) )
