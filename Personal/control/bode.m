clc
clear all
close all
syms x
a=[0.1 0.5 1 2 3 4 5 6 7 8 9 10 15 20 25 30 40 50];
%function
f=-90-atand(x/2)-atand(x/20);
d=transpose(a);
for i=1:size(d)
    l=subs(f,x,d(i));
    q=double(l);
    disp(d(i)+" = "+q)
end