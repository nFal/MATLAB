x=input('input the first sequence ');
y=input('input the second sequence ');
if(length(x)>length(y))
    y=[y zeros(1,length(x)-length(y))];
else
    x=[x zeros(1,length(y)-length(x))];
end
m=length(x);
w=zeros(1,m);
for j=1:m
    for i=1:j-1
            n=j-i+1; 
            w(j)=w(j)+x(i)*y(n);
    end
    w(j)=w(j)+x(j)*y(1);
    for i=j+1:m
        n=m-i+j+1;
        w(j)=w(j)+x(i)*y(n);
    end
end

subplot(311)
stem(x);
axis([0 11 0 8]);
title('First Sequence ');
xlabel('n');
ylabel('x1[n]');

subplot(312)
stem(y);
axis([0 11 0 8]);
title('Second Sequence ');
xlabel('n');
ylabel('x2[n]');

subplot(313)
stem(w);
axis([0 11 0 80]);
title('Circular convolution result ');
xlabel('n');
ylabel('x1[n] (*) x2[n]');

gtext('Noufal P 13400043');