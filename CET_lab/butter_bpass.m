% Butterworth Band pass filter
clc;
clear;
alphap=15%input('Enter the Passband attenuation in dB ');
alphas=30%input('Enter the Stopband attenuation in dB ');
fp=[58 62]%input('Enter the Passband frequencies in hertz in an array');
fs=[57 63]%input('Enter the Stopband frequencies in hertz in an array');
F=1000%input('Enter the Sampling frequency in hertz');
normfp=2*fp/F;
normfs=2*fs/F;
[n,normf]=buttord(normfp,normfs,alphap,alphas);
fn=normf*F/2;
display('The order of the filter is = ');n
display('The cut off frequencies in hertz of the filter are =');fn
[b,a]=butter(n,normf);
display('The Numerator coefficients of the filter is = ');b
display('The Denominator coefficients of the filter is = ');a
[h,f]=freqz(b,a,512,F);
Av=abs(h);
an=angle(h)*180/pi;
subplot(211);
plot(f,Av);
title('Magnitude Response');
xlabel('Frequency in hertz');
ylabel('Magnitude');
grid on;
subplot(212);
plot(f,an);
title('Phase Response');
xlabel('Frequency in hertz');
ylabel('Phase in degrees');
grid on;
gtext('Noufal P 13400043');