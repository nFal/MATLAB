clc
clear all
close all
a=input('Enter the first sequence ');
b=input('Enter the second sequence ');
ma=length(a);
mb=length(b);
c=zeros(1,ma+mb-1);
for i=1:ma
j=i-1;
k=ma-i;
c=[zeros(1,j) b*a(i) zeros(1,k)]+c;
end
c