clc
clear all;
close all;
p=[-2 3 5];
r=sqrt((p(1)^2)+(p(2)^2));
rho=sqrt((p(1)^2)+(p(2)^2)+(p(3)^2));
if((p(2)>=0)&&(p(1)>=0))
    theta=atand (p(2)/p(1));
elseif(p(1)<0)
    theta=atand(p(2)/p(1))+180;
elseif(p(2)<0)
    theta=atand(p(2)/p(1));
elseif((p(1)<0)&&(p(2)<0))
    theta=atand(p(2)/p(1))+180;
end
phi=acosd(p(3)/rho);
cartesian=p;
cylinder=[r theta p(3)]
spherical=[rho phi theta]