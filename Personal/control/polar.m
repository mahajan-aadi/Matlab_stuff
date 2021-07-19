clc
clear all
close all
syms w a
%function
%a=i
eq=((a*w)*(a*w+1)*(a*w+4))
den=eq *  ((a*w)*(-a*w+1)*(-a*w+4));
num=((a*w)*(-a*w+1)*(-a*w+4));
disp("num");
expand(num)
