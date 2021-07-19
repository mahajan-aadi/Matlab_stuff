clc; clear all; close all;
Y=[ 2-3.85i -2+4i; -2+4i 2-3.85i];
V_1 = 1.05; 
del_1 = 0; 
V_20 = 1;
del_20 = 0; 
theta_12= atan (4/(-2));
H = abs(V_1)*abs(V_20)*abs(Y (1,2)) *sin (del_20-(theta_12))
J = -1*abs(V_1)*abs(V_20)*abs(Y (1,2)) *cos (del_20-(theta_12))
N = 2* ((V_20)^2) *real (Y(2,2)) +J; 
N = abs (N)
L = -2* ((V_20)^2) *imag (Y(2, 2))-H; 
L=abs (L)
Jacobian = [H N;J L]