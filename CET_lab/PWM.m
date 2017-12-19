fm=input('Enter the Message frequency = ');
fc=input('Enter the Carrier Sawtooth frequency = ');
a=5;
t=0:0.00001:1;
c=a*sawtooth(2*pi*fc*t);
m=0.75*a*sin(2*pi*fm*t);
n=length(c);
for i=1:n
    if (m(i)>=c(i))
        pwm(i)=1;
    else
        pwm(i)=0;
    end
end

subplot(311)
plot(t,c);
title('Carrier wave');
xlabel('Time(s)');
ylabel('Amplitude');


subplot(312)
plot(t,m);
title('Modulating wave');
xlabel('Time(s)');
ylabel('Amplitude');
subplot(313)
plot(t,pwm);
title('PWM wave');
xlabel('Time(s)');
ylabel('Amplitude');
axis([0 1 -.5 1.5]);
gtext('Noufal P 13400043');
