clc, 
clear a11 
close all 
Z133 = j*0.36446; Z033 = j*0.4456; Zf=j*0.1;
disp('(a) Balanced three-phase fault at bus 3')
Ia3F = 1.0/(Z033+Zf)
disp('(b) Single line-to-ground fault at bus 3')
I03= 1.0/(Z033 + 3*Zf + Z133 + Z133); 
I012=[I03 ; I03 ; I03]
%sctm 
global sctm
a =cos(2*pi/3) +j*sin (2*pi/3);
sctm = [1 1 1 ; 1 a^2 a ; 1 a a^2];
Iabcs = sctm*I012 
disp('(C) Line-t0-line fault at bus 3')
I13 = 1.0/ (Z133 + Z133 + Zf);
I012 = [0 ; I13; -I13]
Iabe3 =sctm*I012 
disp('(d) Double line-to-ground fault at bus 3')  
I13 = 1/ (Z133 + Z133*(Z033+3*Zf)/(Z133+Z033+3*Zf));
I23 = -(1.0 - Z133*I13)/Z133;
I03 = -(1.0 - Z133*I13)/(Z033+3*Zf);
I012 = [I03; I13 ; I23]
Iabe3 =sctm*I012 