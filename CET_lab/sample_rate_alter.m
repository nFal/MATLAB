f=input('Enter the signal frequency in Hz ');
Fs=input('Enter the sampling rate in Hz ');
I=input('Enter the upsample factor ');
D=input('Enter the downsample factor ');
Ts=1/Fs;
t=0:Ts:1;
s=sin(2*pi*f*t);
up=upsample(s,I);
dn=downsample(s,D);
res=downsample(up,D);


figure(1);
subplot(211);
plot(t,s);
title(['Original signal of frequency ',num2str(f),' Hz']);
xlabel('Time(s)');
ylabel('Amplitude');

subplot(212);
stem(t,s);
title(['Signal sampled @ ',num2str(Fs),' Hz']);
xlabel('Time(s)');
ylabel('Amplitude');
gtext('Noufal P 13400043');

figure(2);
subplot(311);
stem(up);
title(['Signal upsampled by factor ',num2str(I)]);
xlabel('Sample point');
ylabel('Amplitude');

subplot(312);
stem(dn);
title(['Signal downsampled by factor ',num2str(D)]);
xlabel('Sample point');
ylabel('Amplitude');

subplot(313);
stem(res);
title(['Signal sampled by factor ',num2str(I),'/',num2str(D)]);
xlabel('Sample point');
ylabel('Amplitude');
gtext('Noufal P 13400043');









