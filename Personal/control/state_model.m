clc
clear all
close all
syms s
%function

A=[0 3;-2 -5];
B=[1 1;1 1];
C=[2 1;1 0];
D=[0];
X_0=[0;0];
U_s=0;

a=size(A);
u=s*eye(a)-A
determinant=det(u)
adjoint=determinant*inv(u)
phi_s=inv(u)
disp("time response");
phi_t=ilaplace(phi_s)
ZIR=phi_t*X_0
under=simplify(phi_s*B*U_s)
ZSR=ilaplace(under)
X_t=ZIR+ZSR
Y_t=C*X_t
disp("tf");
inv_mul_B=simplify(phi_s*B)
first=simplify(C*(inv_mul_B))
tf=first+D