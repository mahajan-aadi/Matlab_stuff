clc
clear all
close all
syms x y z
f =input('Enter in the form [i,j,k]:');
P= inline(vectorize (f(1)), 'x', 'y', 'z');
Q = inline(vectorize (f(2)), 'x', 'y', 'z');
R = inline(vectorize (f(3)), 'x', 'y', 'z');
x=linspace (0, 1, 10);
[X, Y, Z]= meshgrid (x);
U = P(X,Y,Z);
V = Q(X,Y,Z);
W = R(X,Y,Z);
quiver3(X, Y, Z, U, V, W)