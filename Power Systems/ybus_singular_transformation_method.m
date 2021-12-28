% ybus singular transformationmethod%

clc

b = input('number of buses? : ');
br = input('number of branches in graph?: ');


Zprimitive=zeros(b,b);
Orientation=zeros(br,2);
disp('Enter bus data');
for i=1:br
    fbus=input('from bus ');
    tbus=input('to bus:  ');
    imp=input('enter impedence between these buses: ');
    Orientation(i,1)=fbus;
    Orientation(i,2)=tbus;
    Zprimitive(i,i)=imp;   
end
disp('solution:');

Zprimitive

Yprimitive=zeros(b,b);
for i=1:br
    Yprimitive(i,i)=1/(Zprimitive(i,i));
end
Yprimitive
A=zeros(br,b);
for j=1:br
        fbus=Orientation(j,1);
        tbus=Orientation(j,2);
        if(fbus==0)
        else
            A(j,fbus)=1;  
        end
        if(tbus==0)
        else
         A(j,tbus)=-1;
        end
end
disp('Bus incidence matrix A:');
A
disp('Transposed Bus incedence matrix : ')
A'
disp('Therefore Ybus= (A'')x(Ybus)x(A)')
Ybus = (A')*(Yprimitive)*A;
Ybus