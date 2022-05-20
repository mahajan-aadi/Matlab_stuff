clc
clear all
syms r s t
q=input('write coeꎰecients of quadratic form ax^2 + by^2 + cz^2 + 2fxy+2gyz+2hxz in [a,b,c,f,g,h]=');
A=[q(1),q(4),q(5);q(4),q(2),q(6);q(5),q(6),q(3)];
[P,D]=eig(A);
disp('The orthogonal transformation is:')
disp(P)
disp('The canonical form is:')
f=D(1,1)*r^2+D(2,1)*s^2+D(3,3)*t^2;
disp(vpa(f,4))
neg=0;
pos=0;
zero=0;
for i=1:3
    if(D(i,i)>0)
        pos=pos+1;
    end
    if(D(i,i)<0)
        neg=neg+1;
    else
        zero=zero+1;
    end
end
if(pos==3)
    disp('positive defininte');
elseif(neg==3)
    disp('negetive definite');
elseif(pos>0 & neg ==0 & zero>0)
    disp('positive semi-definite');
elseif(neg>0 & pos ==0 & zero>0)
    disp('positive semi-definite');
else
    disp('no definite');
end