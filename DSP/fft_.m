%f1=1/128;
%f2=5/128;
%fc=50/128;
%x=cos(2*pi*f1*n)+cos(2*pi*f2*n);
%xc=cos(2*pi*fc*n);
%xamp=x.*xa;

%part 1
clc;
close all;clear all;
f1=1/128;
f2=5/128;
n=0:255;
fc=50/128;
x=cos(2*pi*f1*n)+cos(2*pi*f2*n);
xc=cos(2*pi*fc*n);
xa=xc;
xamp=x.*xa;
subplot(2,2,1);plot(n,x);
title('x(n)');xlabel('n--->');ylabel('amplitude');
subplot(2,2,2);plot(n,xc);
title('xc(n)');xlabel('n--->');ylabel('amplitude');
subplot(2,2,3);plot(n,xamp);
title('x(n)');xlabel('n--->');ylabel('amplitude');
%part 2 %128 point dft <127
n=0:127;
figure;
n1=128;
f1=1/128;
f2=5/128;
fc=50/128;
x=cos(2*pi*f1*n)+cos(2*pi*f2*n);
xc=cos(2*pi*fc*n);
xa=xc;
xamp=x.*xa;xam=fft(xamp,n1);
stem(n,xam);title('xamp(n)');
xlabel('n-->');ylabel('amplitude');
%part 3 %128 point dft <99
n=0:99;figure;n2=0:n1-1;
f1=1/128;
f2=5/128;
fc=50/128;
x=cos(2*pi*f1*n)+cos(2*pi*f2*n);
xc=cos(2*pi*fc*n);
xa=xc;
xamp1=x.*xa;
for i=1:100
    xamp1(i)=xamp(i);
end
xam=fft(xamp1,n1);
stem(n2,xam);title('xam(n)')
xlabel('n-->');ylabel('amplitude');