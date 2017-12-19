x=input('input the first sequence ');
y=input('input the second sequence ');
if(length(x)>length(y))
    y=[y zeros(1,length(x)-length(y))];
else
    x=[x zeros(1,length(y)-length(x))];
end
m=length(x);
w=zeros(1,m);
for i=1:m
    for j=1:m
        k=mod(i-j,m)+1;
        w(i)=w(i)+x(j)*y(k);
    end
end
disp(w);