clc
clear all
syms x y
f=input('Enter the function:');
I=input ("Enter the point[a,b] at which Taylor series is sought:");
a=I(1);
b=I(2);
n=input('Enter the order of series:');
taylor_=taylor(f,[x, y], [a,b], 'order',n);
subplot(1,2,1);
ezsurf(f),
subplot(1,2,2);
ezsurf (taylor_);