clc;
clear all;
close all;
rp=input('Enter the passband ripple=');
rs=input('Enter the stopband ripple=');
fpb=input('Enter the passband frequency=');
fsb=input('Enter the stopband frequency=');
fs=input('Enter the sampling frequency=');
Wp=2*fpb/fs;
Ws=2*fsb/fs;
num=(-20*log10(sqrt(rp*rs)))-13;
den=14.6*(fsb-fpb)/fs;
n=ceil(num/den);
n1=n+1;
if (rem(n,2)~=0)
    n1=n;
    n=n-1;
end
y=hanning(n1);
%LOW PASS FILTER
b=fir1(n,Wp,y);
[h w]=freqz(b,1,256);
m=20*log10(abs(h));
subplot(2,2,1);
plot(w/pi,m,'c');
ylabel('Gain(dB)');
xlabel('Normalized Frequency----->');
title('Magnitude Response of a LOW PASS FIR Filter');
%HIGH PASS FILTER
b=fir1(n,Wp,'high',y);
[h w]=freqz(b,1,256);
g=20*log10(abs(h));
subplot(2,2,2);
plot(w/pi,g,'m');
ylabel('Gain(dB)');
xlabel('Normalized Frequency----->');
title('Magnitude Response of a HIGH PASS FIR Filter');
%BAND PASS FILTER
Wn=[Wp Ws];
b=fir1(n,Wn,'bandpass',y);
[h w]=freqz(b,1,256);
L=20*log10(abs(h));
subplot(2,2,3);
plot(w/pi,L,'g');
ylabel('Gain(dB)');
xlabel('Normalized Frequency----->');
title('Magnitude Response of a BAND PASS FIR Filter');
%BAND STOP FILTER
Wn=[Wp Ws];
b=fir1(n,Wn,'stop',y);
[h w]=freqz(b,1,256);
o=20*log10(abs(h));
subplot(2,2,4);
plot(w/pi,o,'y');
ylabel('Gain(dB)');
xlabel('Normalized Frequency----->');
title('Magnitude Response of a BAND STOP FIR Filter');


