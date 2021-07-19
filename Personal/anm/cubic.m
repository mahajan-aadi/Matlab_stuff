clc
clear all
format long

x=[1,2,3,4]
y=[1,5,11,8];
find=1;
number=1.5;

h=x(2)-x(1);
f1=6*(y(1)-2*y(2)+y(3))/(h^2)
f2=6*(y(2)-2*y(3)+y(4))/(h^2)

syms M1 M2
eq1=4*M1+M2==f1;
eq2=M1+4*M2==f2;
[A,B] = equationsToMatrix([eq1, eq2], [M1, M2]);
X = linsolve(A,B);
M1=X(1)
M2=X(2)
syms t
M=[0,M1,M2,0];
f=expand((((((x(find+1)-t)^3)*M(find))+(t-x(find))^3)*M(find+1))/(6*h)+(1/h)*((x(find+1)-t)*(y(find)-(h^2)*M(find)/6))+(1/h)*((t-x(find))*(y(find+1)-(h^2)*M(find+1)/6)))
sub_answer=eval(subs(f,t,number))
diff_f=diff(f,t)
diff_subs=eval(subs(diff_f,t,number))