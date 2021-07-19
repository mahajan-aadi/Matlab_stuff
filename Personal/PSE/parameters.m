clear all  
clc  
Vrll=input('Receiving end Voltage= ');  
Vr=Vrll/sqrt(3)  
Pr=input('Receiving end Power= (in W)');  
PF=input('Receiving End Power Factor=');  
Irmag=Pr/(sqrt(3)*Vrll*PF)  
Ir=Irmag*(PF-i*(sin(acos(PF))))  
z=input('Series impedence ='); %R+jXl  
y=input('Shunt admittance ='); %+j*Bc; Bc=1/(-jXc)  
L=input('Length =');  
Type=input('Type of Transmission Line =');
%Short TL=1 End  condenser=2 NominalT=3 Nominalpi=4 Long TL=5  
Z=z*L;  
Y=y*L;  
if Type == 1  
A=1  
B=Z  
C=0  
D=A  
Vs=Vr*A+Ir*B  
Is=Vr*C+Ir*D  
elseif Type == 2  
A=(1+(Y*Z))  
B=Z  
C=Y  
D=1  
Vs=Vr*A+Ir*B  
Is=Vr*C+Ir*D  
elseif Type == 3  
A=(1+((Y*Z)/2))  
B=Z*(1+((Y*Z)/4))  
C=Y  
D=A  
Vs=Vr*A+Ir*B  
Is=Vr*C+Ir*D  
elseif Type == 4  
A=(1+((Y*Z)/2))  
B=Z  
C=Y*(1+((Y*Z)/4))  
D=A  
Vs=Vr*A+Ir*B  
Is=Vr*C+Ir*D  
elseif Type == 5  
A=cosh(sqrt(Y*Z));
B=sqrt(Z/Y)*sinh(sqrt(Y*Z)); 
C=sqrt(Y/Z)*sinh(sqrt(Y*Z));
D=A;Vs=Vr*A+Ir*B;
Is=Vr*C+Ir*D;
end  
Vsph=abs(Vs);  
VsangPh=radtodeg(angle(Vs));  
Vsll=abs(Vs)*sqrt(3);  
Vsllang=radtodeg(angle(Vs))+30;  
Ismag=abs(Is);  
Isang=radtodeg(angle(Is));  
PFs=cos(angle(Vs)+abs(angle(Is)));  
Ps=sqrt(3)*Vsll*Ismag*PFs;  
Reg=(abs(Vs)-abs(Vr))*100/abs(Vr);  
Eff=Pr*100/Ps;  
fprintf('\nSending end Voltage=%g V\n',Vs);  
fprintf('\nSending end Current=%g A \n',Is);  
fprintf('\nSending end phase Voltage =%g V \n',Vsph);  
fprintf('\nSending end phase angle=%g degree \n',VsangPh);  
fprintf('\nSending end line to line voltage=%g V \n',Vsll);  
fprintf('\nSending end line to line Current =%g A\n',Ismag);  
fprintf('\nSending end Power =%g Watts\n',Ps);  
fprintf('\nSending end Power Factor =%g \n',PFs);  
fprintf('\n %g Voltage Regulation\n',Reg);  
fprintf('\nEfficiency =%g \n',Eff);  
