subplot(2,1,1);
y1=[1 3 4];
y2=[1 0 3 5];
n1=length(y1);
n2=length(y2);
x1=0:n1-1;
x2=0:n2-1;
subplot(3,1,1);
stem(x1,y1);
title('First Sequence');
xlabel('n');
ylabel('y1[n]');
axis([0 6 0 5]);
subplot(3,1,2);
stem(x2,y2);
title('Second Sequence');
xlabel('n');
ylabel('y2[n]');
axis([0 6 0 5]);
if n1>n2
    y2=[y2 zeros(1,n1-n2)];
else
    y1=[y1 zeros(1,n2-n1)];
end
z=y1+y2;
x=0:max(n1,n2)-1;
subplot(3,1,3);
stem(x,z);
title('Sequence 1 + Sequence 2');
xlabel('n');
ylabel('y1[n]+y2[n]'); 
axis([0 6 0 8]);

subplot(2,1,2);
f1=1;
f2=2;
a1=input('Input the first sine amplitude ');
a2=input('Input the second sine amplitude ');
x=0:.001:3;
y1=a1*sin(2*pi*f1*x);
y2=a2*sin(2*pi*f2*x);
subplot(3,1,1);
plot(x,y1);
title('Sine1');
xlabel('Time(t)');
ylabel('y1(t)');
subplot(3,1,2);
plot(x,y2);
title('Sine2');
xlabel('Time(t)');
ylabel('y2(t)');
z=y1+y2;
subplot(3,1,3);
plot(x,z);
title('Sine1 + Sine2');
xlabel('Time');
ylabel('y1(t)+y2(t)'); 

gtext('Noufal P 13400043');