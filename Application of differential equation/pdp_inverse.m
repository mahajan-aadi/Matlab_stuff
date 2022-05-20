clc
clear all
close all
A=input("enter matrix=")
[V,D]=eig(A);
P=inv(V);
if round(V*D*P)==A
    disp("verified")
else
    disp("not verified")
end
