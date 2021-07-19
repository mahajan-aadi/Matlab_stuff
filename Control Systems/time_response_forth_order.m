clc;
clear all;
close all;
num=[0 0 7 16 10];
den=[1 5 11 16 10];
t=0:0.02:20;
[y,x,t]=step(num,den,t);
plot(t,y)
grid
title('unit step response')
xlabel('t-sec')
ylabel('output y(t)')
r1=1;while y(r1)<0.1;r1=r1+1;end
r2=1;while y(r2)<0.9;r2=r2+1;end
rise_time=(r2-r1)*0.02
[ymax,tp]=max(y);
mp=ymax-1
peak_time=(tp-1)*0.02
s=1001;while y(s)>0.98&y(s)<1.02;s=s-1;end
settling_time=((s-1)*0.02)