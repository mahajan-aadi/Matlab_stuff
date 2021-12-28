clear all 
clc
n=input('Enter the number of buses: ')
y=zeros(n);
for i=1:n
    for j=i:n
        if i~=j 
            disp(i) 
            disp(j) 
            z(i,j)=input('Enter the impedance value between the lines ') 
            z(j,i)=z(i,j);
            hlc(i,j)=input('Enter the half line charge value:') 
            hlc(j,i)=hlc(i,j);
        end
    end
end
'Input'
disp(z); 
for i=1:n
    for j=1:n 
        if z(i,j)~=0 
            y(i,j)=-1/z(i,j);
        end
        y(j,i)=y(i,j)
        if i~=j
            y(i,i)=y(i,i)-y(i,j)+hlc(i,j)
        end
    end
end
disp('Admittance matrix') 
disp(y)