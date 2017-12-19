clc;
clear all;

t2=0:.001:100;
org=sin(2*pi*10*t2);
n=5;
sampled=0;
for i=1:length(org)
    if(rem(i,n)==0)
        sampled(i)=org(i);
    else
        sampled(i)=0;
    end
end

[n wn]=buttord(.13,.7,0.1,100);
[b a]=butter(n,wn);
recon=filter(b,a,sampled);
% subplot(311)
% plot(t2,org);
% subplot(312)
% stem(t2,sampled);
% 
% subplot(313)
% plot(t2,recon);
% axis([0 1 -1 1])
% fftorg=fft(org,2^(nextpow2(length(org))))
% fftorg=fftshift(abs(fftorg));
% 
% m=2^nextpow2(length(org));
% g=-m/2:(m/2-1);
% g=(1000/m).*g;
% plot(g,fftorg);

fftsampled=fftshift(abs(fft(sampled,2^(nextpow2(length(sampled))))));
m=2^nextpow2(length(sampled));
g=-m/2:(m/2-1);
g=(200/m).*g;
plot(g,fftsampled);