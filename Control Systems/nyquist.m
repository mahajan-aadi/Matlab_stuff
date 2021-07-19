clc;
clear all;
close all;
num=[1]; 
den=[1 3 2 0];  
fun=tf(num,den)
nyquist(fun)
axis equal