clc;
clear all;
t=0:.00001:.01;
f=1000;
org=sin(2*pi*f*t);
subplot(311);
plot(org);
title('original signal');
noised=awgn(org,10);
subplot(312);
plot(noised);


filtered=filter([0.33 .33 .33],1,noised);
subplot(313);
plot(filtered);
title('filtered signal');
title('noised signal');display('initial MSE');
sum((org-noised).^2)/length(org)
display('finall MSE');
sum((org-filtered).^2)/length(org)