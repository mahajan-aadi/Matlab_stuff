clc
clear all
close all
syms s f
%function
M=[4*s^2+2*s+6 -(2*s) 0;-2*s 4*s^2+4*s+6 -6;0 -6 4*s^2+2*s+6];
F=[0;f;0];
determine=det(M)
%two block

%del_X1=det([F(1) M(2);F(2) M(4)])
%del_X2=det([M(1) F(1);M(3) F(2)])

%three block

del_X1=det([F(1) M(2) M(3);F(2) M(5) M(6);F(3) M(8) M(9)])
del_X2=det([M(1) F(1) M(3);M(4) F(2) M(6);M(7) F(3) M(9)])
del_X3=det([M(1) M(2) F(1);M(4) M(5) F(2);M(7) M(8) F(3)])