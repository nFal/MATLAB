fs=input('Enter the modulating signal frequency ');
as=input('Enter the modulating signal amplitude ');
fc=input('Enter the carrier signal frequency ');
ac=input('Enter the carrrier signal amplitude ');
mu=input('Enter the modulation index ');
Fs=20*(fc+fs);
Ts=1/Fs;
t=0:Ts:5/fs;
c=ac*sin(2*pi*fc*t);
s=as*sin(2*pi*fs*t);
fm=ac*sin(2*pi*fc*t -mu*cos(2*pi*fs*t));
fm_dft=fft(fm);
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
plot(t,fm);
title('Frequency modulated signal');
xlabel('Time(s)');
ylabel('Amplitude');
gtext('Noufal P 13400043');

figure(2)
subplot(211)
plot(F,fftshift(abs(fm_dft)));
title('Magnitude spectrum');
xlabel('Frequency(Hz)');
ylabel('Magnitude');
subplot(212)
plot(F,fftshift(angle(fm_dft)));
title('Phase spectrum');
xlabel('Frequency(Hz)');
ylabel('Phase shift');
gtext('Noufal P 13400043');