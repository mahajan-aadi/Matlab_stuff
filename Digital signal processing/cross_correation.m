clc;
clear all;
%CROSS CORRELATION:
x=input('enter samples of x');
h=input('enter samples of h');
xlen=length(x);
hlen=length(h);
for i=1:xlen;
    for j=1:xlen;
        y(i,i+j-1)=x(i)*h(hlen-j+1);
    end
end
z=sum(y);
disp('output');z
disp('output sequence');y
stem(x,y);

