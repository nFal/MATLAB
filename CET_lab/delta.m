clc;
clear all;

t=0:.001:1;
x=2*sin(2*pi*t);
del=.02;
%input('Enter delta');
xn=0;
d=0;
for i=2:length(x)
    if(x(i)>xn(i-1))
        xn(i)=xn(i-1)+del;
        d(i)=1;
    else
        xn(i)=xn(i-1)-del;
        d(i)=0;
    end
end
subplot(311);
plot(x);
subplot(312);
stairs(d);
subplot(313)
stairs(xn);
    