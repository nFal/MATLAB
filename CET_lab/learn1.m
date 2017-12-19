fc=input('Enter the cutoff in Hz ');
F=input('Enter the sampling frequency ');
wc=pi*2*fc/F;
N=input('Enter the window length(odd) ');
n0=(N-1)/2;
n=0:N-1;
hd=(wc/pi)*sinc(wc*(n-n0));
wh=hanning(N);
hn=wh'.*hd;
u=0:.01:pi;
[h f]=freqz(hn,1,512,F);
fplo=u*(F/(2*pi));
plot(f,abs(h));

