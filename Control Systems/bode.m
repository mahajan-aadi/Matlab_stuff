clc;
clear all;
close all;
num=[1]; 
den=[1 15 36 0];  
k=10^(54.6/20)
bode(k,den);