clc
clear all
close all
syms x y z
F=input('Enter the vector as i, j and k in vector form:')
P=inline (vectorize (F(1)), 'x', 'y', 'z');
Q=inline (vectorize (F(2)), 'x', 'y', 'z');
R=inline (vectorize (F(3)), 'x', 'y', 'z');
x=linspace (0,1,10);
y=x; z=x;
[x, y, z]=meshgrid (x, y, z);
u=P (x, y, z); v=Q (x, y, z);w=R (x, y, z);
quiver3 (x, y, z, u, v, w);
axis on
xlabel('x')
ylabel('y')
zlabel('z')