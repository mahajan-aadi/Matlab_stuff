clc;clear all;close all;
LineData=[1 2 0.02   0.04  -1   1
          2 3 0.0125 0.025 -0.5 1
          3 1 0.01   0.03  -0.5 1];
N1=LineData(:,1);Nr=LineData(:,2);
R=LineData(:,3);X=LineData(:,4);Bc=j*LineData(:,5);
a=LineData(:,6);
Nbr=length(LineData(:,1));Nbus=max(max(N1),max(Nr));
Z=R+j*X;
Y=ones(Nbus,1);
for i=1:Nbr
    Y(i)=1/Z(i);
end
for i=1:Nbr
    if(a(i)<=0);a(i)=1;
    else end
end
Ybus=zeros(Nbus,Nbus);
for k=1:Nbr
    Ybus(N1(k),Nr(k))=Ybus(N1(k),Nr(k))-Y(k)/a(k);
    Ybus(Nr(k),N1(k))=Ybus(N1(k),Nr(k));
end
for n=1:Nbus
    for k=1:Nbr
        if(N1(k)==n)
            Ybus(n,n)=Ybus(n,n)+Y(k)/(a(k)^2)+Bc(k);
        elseif(Nr(k)==n)
            Ybus(n,n)=Ybus(n,n)+Y(k)/(a(k)^2)+Bc(k);
        else end;
    end
end
disp(Ybus)