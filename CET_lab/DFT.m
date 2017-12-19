N=128;
Fs=25;
Ts=1/Fs;
n=0:N-1;
dt=.00001;
t=0:dt:(N-1)*Ts;
a1=2;
a2=3;
f1=11;
f2=7;

figure(1);

subplot(211);
x=a1*sin(2*pi*f1*t)+a2*sin(2*pi*f2*t);
plot(t,x);
title('Original signal');
xlabel('Time(s)');
ylabel('Amplitude');
axis([0 (N-1)*Ts -(a1+a2) (a1+a2)]); 


subplot(212);
x=a1*sin(2*pi*f1*n*Ts)+a2*sin(2*pi*f2*n*Ts);
stem(n*Ts,x);
title('Sampled signal');
xlabel('Time(s)');
ylabel('Amplitude');
axis([0 (N-1)*Ts -(a1+a2) (a1+a2)]); 
gtext('Noufal P 13400043');

figure(2);

F=(-0.5*N+1:0.5*N).*(Fs/N);
y=fft(x);

subplot(211);
plot(F,fftshift(abs(y)));
title('Magnitude spectrum');
xlabel('Frequency (Hz)');
ylabel('Magnitude');


subplot(212);
plot(F,fftshift(angle(y)));
title('Phase spectrum');
xlabel('Frequency (Hz)');
ylabel('Phase shift');
gtext('Noufal P 13400043');









