clc;clear all;close all;
N=input('Enter the number of Nodes:');
Z=input('Enter the impedence Matrix:');%[1j,0.4j,0.2j,0;0.4j,0.8j,0.2j,0;0.2j,0.2j,0,0.8j;0,0,0.8j,0]
for i=1:N
    for j=1:N
        if(Z(i,j)==0)
            Y(i,j)=Z(i,j);
        else
            Y(i,j)=1/Z(i,j);
        end
    end
end
YB=zeros(N,N);
for j=1:N
    for i=(j+1):N
        Y(i,j)=Y(j,i);
    end
end
for j=1:N
    for i=1:N
        YB(j,j)=YB(j,j)+Y(j,i);
    end
end
for j=1:N
    for i=(j+1):N
        YB(j,i)=YB(j,i)-Y(j,i);
    end
end
for j=1:N
    for i=(j+1):N
        YB(i,j)=YB(j,i);
    end
end
disp(YB);        