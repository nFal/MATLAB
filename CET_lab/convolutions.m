x=input('input the first sequence');
y=input('input the second sequence');
m=length(x);
n=length(y);
c=zeros(1,m+n-1);
for i=1:m+n-1
    if i>m       
        j=m;
        k=i+1-m;
    else
        j=i;
        k=1;
    end
    while j~=0 && k~=(n+1)
        c(i)=x(j)*y(k)+c(i);
        j=j-1;
        k=k+1;
    end
end
disp(c);