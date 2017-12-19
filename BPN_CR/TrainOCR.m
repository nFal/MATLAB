clear;
load('weights');
alpha = .09;
for epoch=1:100
    ind=1;
    T=[1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];
    epoch
    for iv=11:36
        T
        nam='img000-000.png';
        nam(5:6)=num2str(iv);
        for it=1:55
            if it<10
                nam(10)=num2str(it);
            else
                nam(9:10)=num2str(it);
            end
            
            X=imread(nam);
            X = im2bw(X,0.7);
            X=imresize(X,[50 50]);
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
            
            for j=1:26
                dY(j)=(T(j)-Y(j))*exp(-Y_in(j))/((1+exp(-Y_in(j)))*(1+exp(-Y_in(j))));
                for i=1:50
                    dW(i,j)=alpha*dY(j)*Z(i);
                    dbY(i)=alpha*dY(j);
                end
            end
            
            for i=1:50
                dZ_in(i)=0;
                for j=1:26
                    dZ_in(i)=dZ_in(i)+dY(j)*W(i,j);
                end
                dZ(i)=dZ_in(i)*exp(-Z_in(i))/((1+exp(-Z_in(i)))*(1+exp(-Z_in(i))));
            end
            
            for i=1:2500
                for j=1:50
                    dV(i,j)=alpha*dZ(j)*X(i);
                    dbZ(j)=alpha*dZ(j);
                end
            end
            
            for i=1:2500
                for j=1:50
                    V(i,j)=V(i,j)+dV(i,j);
                end
            end
            
            for i=1:50
                for j=1:26
                    W(i,j)=W(i,j)+dW(i,j);
                end
            end
            
            for j=1:50
                bZ(j)=bZ(j)+dbZ(j);
            end
            
            for j=1:26
                bY(j)=bY(j)+dbY(j);
            end
        end        
        ind=ind+1;
        T(ind-1)=0;
        T(ind)=1;
    end
end
save('weights','W','V','bY','bZ');

        
        
        
        

 

