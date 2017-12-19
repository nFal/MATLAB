clc;
clear all;

sysorder=5;
%input('Enter system order ');
b=fir1(sysorder-1,0.5);
N=500;
%input('Enter number of iterations ');
x=rand(N,1);
n=randn(N,1)*.1;
d=filter(b,1,x)+n;
w=[.2 .2 .2 .2 .2]';
y=zeros(N,1);
for n=sysorder:N
    u=x(n:-1:n-sysorder+1);
    y(n)=w'*u;
    e(n)=d(n)-y(n);
    mu=.009;
    w=w+mu*e(n)*u;
end


%plot(d(sysorder:end),'r');
%plot(y(sysorder:end),'b');
%plot(abs(e(sysorder:end)),'black');
hold on;
plot(b,'b+');
plot(w,'r*');
%axis([0 N -1 2.5]);