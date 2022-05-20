clc
clear all
close all
syms x
f(x)=input( 'enter the function:');
a=input( 'enter the lower limit:');
b=input( 'enter the upper limit:' );
if f(a)==f(b)
    df(x)=diff(f,x);
    rts=solve(df(x),x)
    disp('roots:');
    for i=1:length(rts) 
        if(rts(i)>a && rts(i)<b)
            disp(char(rts(i)));
            tangent=f(rts(i));
            ezplot(tangent, [double(rts(i))-0.5, double(rts(i))+0.5]) 
            hold on
        end
    end
    disp('verified');
else
    disp('f(a) is not equal to f(b)');
end
ezplot(f, [a,b])
xlabel( 'x' )
ylabel('f(x)')
title('geometrical interpretation of rolles theorem')
grid on
