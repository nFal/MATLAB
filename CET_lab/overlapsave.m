clear all;
x=input('Enter the input sequence ');
h=input('Enter the impulse response ');
Ns=input('Enter the segmentation length ');
Nh=length(h);
x=[x zeros(1,Nh-1)];
Nx=length(x);
x=[zeros(1,Nh-1) x zeros(1,Ns-mod(Nx,Ns))];
h=[h zeros(1,Ns-1)];
H=fft(h);
M=(length(x)+1-Nh)/Ns;
j=1;
k=Ns+Nh-1;
res=0;
for i=1:M
    y=x(j:k);
    YH=fft(y).*H;
    yh=ifft(YH);
    res((i-1)*Ns+1:i*Ns)=yh(Nh:Nh+Ns-1);
    j=k-(Nh-2);
    k=j+(Ns+Nh-2);
end
res
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
title('Linear convolution with overlap save result ');
xlabel('n');
ylabel('x[n] * h[n]');

gtext('Noufal P 13400043');
