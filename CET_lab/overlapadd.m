x=input('Enter the input sequence ');
h=input('Enter the impulse response ');
Ns=input('Enter the segmentation length ');
Nx=length(x);
Nh=length(h);
x=[x zeros(1,Ns-mod(Nx,Ns))];
h=[h zeros(1,Ns-1)];
M=length(x)/Ns;
H=fft(h);
j=1;
k=Ns+Nh-1;
res=zeros(1,length(x)+Nh-1);
for i=1:M
    y=[x((i-1)*Ns+1:i*Ns) zeros(1,Nh-1)];
    YH=fft(y).*H;
    yh=ifft(YH);
    res(j:k)=res(j:k)+yh(1:Ns+Nh-1);
    j=k-(Nh-2);
    k=j+(Ns+Nh-2);
end

subplot(311)
stem(x);
axis([0 20 0 8]);
title('Input sequence ');
xlabel('n');
ylabel('x[n]');

subplot(312)
stem(h);
axis([0 20 0 8]);
title('Impulse response ');
xlabel('n');
ylabel('h[n]');

subplot(313)
stem(res);
%axis([0 11 0 80]);
title('Linear convolution with overlap add result ');
xlabel('n');
ylabel('x[n] * h[n]');

gtext('Noufal P 13400043');

