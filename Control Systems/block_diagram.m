clc;
clear all;
close all;
n1=1; d1=1;
n2=1; d2=1;
n3=1; d3=1;
n4=1; d4=[1 1];
n5=1; d5=[1 2];
n6=1; d6=[1 3];
n7=4; d7=1;
n8=8; d8=1;
input=1;
output=5;
nblocks=8;
blkbuild;
q= [2 5 6 -8
3 -7 2 0
4 3 -8 6 
5 4 -7 0 
6 3 -8 0 
7 4 0 0 
8 6 5 0 ];
[aa,bb,cc,dd]=connect(a,b,c,d,q,input,output);
[num,den]=ss2tf(aa,bb,cc,dd);
printsys(num,den,'s')