fm=input('Enter the modulating signal frequency ');
fc=input('Enter the carrier signal frequency ');
a=input('Enter the carrrier amplitude ');
m=input('Enter the modulation index ');
Fs=10*(fc+fm);
Ts=1/Fs;
t=0:Ts:5/fm;
c=a*sin(2*pi*fc*t);
s=m*a*sin(2*pi*fm*t);
am=a*(1+m*sin(2*pi*fm*t)).*sin(2*pi*fc*t);
am_dft=fft(am);
N=length(t);
if mod(N,2)
    u=0;
    M=floor(N/2);
else
    u=1;
    M=N/2;
end
F=(-M+u:M)*(Fs/N);

figure(1)
subplot(311)
plot(t,c);
title('Carrier signal');
xlabel('Time(s)');
ylabel('Amplitude');
subplot(312);
plot(t,s);
title('Modulating signal')
xlabel('Time(s)');
ylabel('Amplitude');
subplot(313)
plot(t,am);
title('Amplitude modulated signal');
xlabel('Time(s)');
ylabel('Amplitude');
gtext('Noufal P 13400043');

figure(2)
subplot(211)
plot(F,fftshift(abs(am_dft)));
title('Magnitude spectrum');
xlabel('Frequency(Hz)');
ylabel('Magnitude');
subplot(212)
plot(F,fftshift(angle(am_dft)));
title('Phase spectrum');
xlabel('Frequency(Hz)');
ylabel('Phase shift');
gtext('Noufal P 13400043');




