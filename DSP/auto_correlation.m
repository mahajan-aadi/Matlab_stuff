%AUTO CORRELATION
clc
close all
clear all
x=input('Enter the sample of x');
xlen=length(x);
for i=1:xlen;
for j=1:xlen;
    y(i ,i+j-1)=x(i)*x(xlen-j+1);
end
end
z=sum(y);
disp('output');z
stem(x,y);