subplot(2,2,1);
x=-4:.001:4;
y=[zeros(1,4000) ones(1,4001)];
plot(x,y);
axis([-4 4 0 1.5]);
xlabel('Time');
ylabel('Amplitude');
title('Unit step signal');

subplot(2,2,2);
x=0:.001:1;
y=0:.001:1;
plot(x,y);
xlabel('Time');
ylabel('Amplitude');
title('Ramp signal');

subplot(2,2,3);
x=-4:.001:4;
y=[zeros(1,4000) 1 zeros(1,4000)];
plot(x,y);
xlabel('Time');
ylabel('Amplitude');
title('Impulse signal');


subplot(2,2,4);
x=-2:.001:10;
y=[zeros(1,12001)];
for k=1:2000
    y(k)=0;
end
for k=2001:6000
    y(k)=1;
end
for k=6001:10000
    y(k)=-1;
end
for k=10001:12000
    y(k)=0;
end
z=[zeros(1,12001)];
plot(x,y,x,z,'k--');
axis([-2 10 -1.5 1.5]);
xlabel('Time');
ylabel('Amplitude');
title('Square wave');
