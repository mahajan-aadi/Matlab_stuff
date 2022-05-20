clc
clear all;
close all;
x=-2;y=3;z=5;
r=sqrt((x^2)+(y^2))
rho=sqrt((x^2)+(y^2)+(z^2))
if((x>=0)&&(y>=0))
    theta=atand(y/x)
elseif (x<0)
    theta=atand(y/x)+180
elseif(y<0)
    theta=atand(y/x)
elseif((x<0)&&(y<0))
    theta=atand(y/x)+180
end
phi=acosd(z/rho)