clc; 
clear all; 
close all; 
%Unit Impulse Signal
n = -20:20;
x = [zeros(1,20) 1 zeros(1,20)]; 
subplot(3,1,1); 
stem(n,x); 
xlabel('Time index n');  
ylabel('Amplitude'); 
title('Unit Impulse Signal'); 
%Unit Step Signal
y = [zeros(1,20) 1 ones(1,20)]; 
subplot(3,1,2); 
stem(n,y); 
xlabel('Time index n');  
ylabel('Amplitude'); 
title('Unit Step Signal'); 
%Unit Ramp Signal
z=[zeros(1,21),1:20]; 
subplot(3,1,3); 
stem(n,z); 
xlabel('Time index n');  
ylabel('Amplitude'); 
title('Unit Ramp Signal');  