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