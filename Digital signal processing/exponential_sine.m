%Exponential increasing signal
n=0:20;
a=2;
x=a.^n;
subplot(3,1,1);
stem(n,x);
xlabel('Time');ylabel('Amplitude');
title('Exponential increasing signal');
%Exponential decreasing signal
n=0:20;
a=0.5;
x=a.^n;
subplot(3,1,2);
stem(n,x);
xlabel('Time');ylabel('Amplitude');
title('Exponential decreasing signal');
%Sine Wave
t=0:0.1:20;
x=3*sin(t);
subplot(3,1,3);
plot(t,x);
xlabel('Time');ylabel('Amplitude');
title('Sinusoidal Signal');
