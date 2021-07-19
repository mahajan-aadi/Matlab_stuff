clc;clear all;close all;
%Triangular Signal
a=2;
t=0:0.1:20;
x1=1-abs(t)/a;
x2=0;
x=x1.*(abs(t)<=a)+ x2.*(abs(t)>a);
subplot(3,1,1);plot(x);
xlabel('Time');ylabel('Amplitude');
title('Triangular Signal');
% Gaussian Waveforms:
a=2;
x=exp(-a.*(t.^2));
subplot(3,1,2);plot(x);
xlabel('Time');ylabel('Amplitude');
title('Gaussian Signal');
% Parabolic Signal:
a=0.4;
x1=(a*(t.^2))/2;
x2=0;
x=x1.*(t>=0)+ x2.*(t<0);
subplot(3,1,3);plot(x);
xlabel('Time');ylabel('Amplitude');
title('Parabolic Signal');