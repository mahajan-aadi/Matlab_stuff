clear all
clc
syms x
f=input('Enter the upper curve f(x):');
c=input('Enter the axis of rotation y=c:');
L=input('Enter the limits of integration [a,b]:');
a=L(1);b=L(2);
vol=pi*int((f-c)^2,a,b);
disp(['vol of solid of revolution is:',char(vol)]);
x1=linspace(a,b,20);
y1=subs(f,x,x1);
x2=x1;
y2=c*ones(length(x1));
plot(x1,y1);
hold on;
plot(x2,y2);
hold off;
xlabel('x-axis');
ylabel('y-axis');
legend('The curve y=f(x)','The axis of revolution y=c');
grid on;