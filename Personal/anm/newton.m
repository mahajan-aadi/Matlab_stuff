clc
clear all
close all
format long
syms x y;

f=x^2+y^2-16;
g=x^2-y^2-4;
init1=3.181980515339464;
init2=2.474873734152916;


fx=diff(f,x)
fy=diff(f,y)
gx=diff(g,x)
gy=diff(g,y)
J=fx*gy-gx*fy
J=eval(subs(subs(J,x,init1),y,init2))
f=eval(subs(subs(f,x,init1),y,init2))
g=eval(subs(subs(g,x,init1),y,init2))
fx=eval(subs(subs(fx,x,init1),y,init2))
gx=eval(subs(subs(gx,x,init1),y,init2))
fy=eval(subs(subs(fy,x,init1),y,init2))
gy=eval(subs(subs(gy,x,init1),y,init2))
h=(-1*f*gy+g*fy)/J
k=(-1*fx*g+gx*f)/J
x=init1+h
y=init2+k