%Design of IIR Band pass,butter worth, Chebyshev and elliptical filter.  
% t=0:200;
% fs=150;
% s1=sin(2*pi*10*t/fs);
% s2=sin(2*pi*20*t/fs);
% s3=sin(2*pi*30*t/fs);
% s=s1+s2+s3;

close all;clear all;
format long;
clc;
t=0:200;
fs=150;
s1=sin(2*pi*10*t/fs);
s2=sin(2*pi*20*t/fs);
s3=sin(2*pi*30*t/fs);
s=s1+s2+s3;
[b,a]=ellip(4,0.1,40,[20,30]*2/fs);
[b1,a1]=butter(4,[20,30]*2/fs);
[b2,a2]=cheby1(4,0.1,[20,30]*2/fs);
[b3,a3]=cheby2(4,40,[20,30]*2/fs);
[h,w]=freqz(b,a,512);
[h1,w1]=freqz(b1,a1,512);
[h2,w2]=freqz(b2,a2,512);
[h3,w3]=freqz(b3,a3,512);
sf=filter(b,a,s);
sf1=filter(b1,a1,s);
sf2=filter(b2,a2,s);
sf3=filter(b3,a3,s);
f=fft(s,512);
ff=fft(sf,512);
ff1=fft(sf1,512);
ff2=fft(sf2,512);
ff3=fft(sf3,512);
p=0:fs/512:fs-(fs/512);
figure(1);
subplot(221);
plot(p,abs(fft(sf,512)));
subplot(222);
plot(p,abs(fft(sf1,512)));
subplot(223);
plot(p,abs(fft(sf2,512)));
subplot(224);
plot(p,abs(fft(sf3,512)));
figure(2)
subplot(221);
plot(w*fs/(2*pi),abs(h));
subplot(222);
plot(w*fs/(2*pi),abs(h1));
subplot(223);
plot(w*fs/(2*pi),abs(h2));
subplot(224);
plot(w*fs/(2*pi),abs(h3));