clc
clear
A=input('Enter the Matrix: ');
%Verification of Cayley-Hamilton theorem
cf=poly(A);
n=length(cf);
CHT=cf(1)*A^(n-1);
for i=2:n
    CHT=CHT+cf(i)*A^(n-i);
end
disp('R.H.S of C-H Theorem: ')
disp(round(CHT))
