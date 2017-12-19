clc;
clear all;
close all;
a=2;
t=0:2*pi/50:2*pi;
x=a*sin(t);
l=length(x);
plot(x,'r');
delta=0.20;
hold on
xn=0;
for i=1:l-1;
    if x(i+1)>xn(i)
        xn(i+1)=xn(i)+delta;
    else
        xn(i+1)=xn(i)-delta;
    end
end
stairs(xn)
hold on
plot(xn,'c');
legend('Analog signal','Delta modulation','Demodulation')
title('DELTA MODULATION / DEMODULATION ')