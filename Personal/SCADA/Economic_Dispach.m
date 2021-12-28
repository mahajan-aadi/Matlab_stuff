clc
clear all
close all
format long

syms lambda
%three
%{
eq=  (lambda-215)/1  +  (lambda-270)/2  +   (lambda-160)/1.4;
max=200;

lambda_answer=solve(max-eq);
display("lambda="+double(lambda_answer));
sub1=eval((lambda_answer-215)/1)
sub1=eval((lambda_answer-270)/2)
sub1=eval((lambda_answer-160)/1.4)
%}
%two

eq=  (lambda-18.9)/0.125  +  (lambda-12)/0.131;
max=310;

lambda_answer=solve(max-eq);
display("lambda="+double(lambda_answer));
sub1=eval((lambda_answer-18.9)/0.125)
sub1=eval((lambda_answer-12)/0.131)
