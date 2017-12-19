clear;
L=['ABCDEFGHIJKLMNOPQRSTUVWXYZ'];
nam='R.jpg';
load('weights');
X=imread(nam);
X=imresize(X,[50 50]);
X = im2bw(X,0.7);
for i=1:50      
    for j=1:50
        if X(i,j)==1
            X(i,j)=0;
        else
            X(i,j)=1;
        end
    end
end

S=0;
for j=1:50
    S=0;
    for i=1:2500  
        S=S+X(i)*V(i,j);
    end
    Z_in(j)=bZ(j)+S;
    Z(j) = 1/(1+exp(-Z_in(j)));
end
for j=1:26
    S=0;
    for i=1:50
        S=S+Z(i)*W(i,j);
    end
    Y_in(j)=bY(j)+S;
    Y(j)=1/(1+exp(-Y_in(j)));
end

for num=1:5
    [m,I]=max(Y);
    rec(num*4) = num2str(L(I));
    per(num)=m*100;
    Y(I)=0;
end

rec
per
imshow(X);  

   