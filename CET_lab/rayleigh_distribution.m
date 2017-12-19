parameter=input('Input the value of the parameter b ');
x=random('Rayleigh',parameter,1,1000000);

subplot(211);
stem(x);
title('Sample of numbers generated from Rayleigh distribution');
axis([0 200 0 10]);
subplot(212);
hist(x,100);
title('Histogram of the numbers generated');

gtext('Noufal P 13400043');