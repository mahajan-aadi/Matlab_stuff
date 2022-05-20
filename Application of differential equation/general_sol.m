clear all
close all
clc
syms c1 c2 x m
F=input('Enter the coefficients [a,b,c]: ');
f=input('Enter the RHS function f(x)[end expression with ")"]: ');
a=F(1);b=F(2);c=F(3);
AE=a*m^2+b*m+c; 
m=solve(AE);
m1=m(1); m2=m(2);
D=b^2-4*a*c;
if(D>0) 
    y1=exp(m1*x);y2=exp(m2*x);
elseif (D==0)
    y1=exp(m1*x);y2=x*exp(m1*x);
else
    alfa=real(m1);beta=imag(m1);
    y1=exp(alfa*x)*cos(beta*x);
    y2=exp(alfa*x)*sin(beta*x);
end
yc=c1*y1+c2*y2; 
fx=f/a;
W=y1*diff(y2,x)-y2*diff(y1,x); 
u=int(-y2*fx/W,x);v=int(y1*fx/W,x);
yp=y1*u+y2*v; 
y_gen=yc+yp;
y=simplify(y_gen);
disp('The General Solution is ');
disp(y);