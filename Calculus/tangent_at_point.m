clc 
syms  x  y 
f=input( 'enter  the  given  function  in  variable  x: ' ); 
x0=input( 'enter  the  x-coordinate  of  the  point: ' ); 
y0=subs(f ,x,x0) ;
fx=diff(f,x); 
m=subs(fx,x,x0); 
tangent=y0+m*(x-x0); 
t_line=y-tangent; 
plotrange=[x0-3,x0+3]; 
ezplot ( f, plotrange) ; 
hold  on ; 
ezplot(tangent,plotrange) 
title ( 'Tangent  lineplot ' ) 
t=sprintf( ' tangent  to  the  curve  y=%s  at  (%d,%d)  is  y=%s ' ,f,x0,y0,tangent);
disp( t );