clc
clear all
close all
syms s
%function equation in "K"
q=((-1)*(s^2*(s+10))/(s+1));
disp("eq=");
simplify(q)
p=diff(q,s);
disp("diff=");
simplify(p)

zero=double(solve(p))
for i=1:size(zero)
    double(subs(q,zero(i)))
end