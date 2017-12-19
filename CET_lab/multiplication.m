%discrete time multiplication
y1=input('Enter the first sequence y1[n] ');
y2=input('Enter the second sequence y2[n] ');
n1=length(y1);
n2=length(y2);

if n1>n2
    y2=[y2 zeros(1,n1-n2)];
else
    y1=[y1 zeros(1,n2-n1)];
end
x1=0:max(n1,n2)-1;
x2=0:max(n1,n2)-1;
subplot(3,1,1);
stem(x1,y1);
title('First Sequence');
xlabel('n');
ylabel('y1[n]');
subplot(3,1,2);
stem(x2,y2);
title('Second Sequence');
xlabel('n');
ylabel('y2[n]');
z=y1.*y2;
x=0:max(n1,n2)-1;
subplot(3,1,3);
stem(x,z);
title('Sequence1 x Sequence2');
xlabel('n');
ylabel('y1[n]*y2[n]');






