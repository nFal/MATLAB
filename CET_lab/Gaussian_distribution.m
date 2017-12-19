m=input('Enter the mean ');
s=input('Enter the standard deviation ');
x=randn(1,1000000);

subplot(211);
stem(x);
title('Sample of numbers generated from Gaussian distribution');
axis([0 200 -10 10]);
subplot(212);
hist(x,100);
title('Histogram of the numbers generated');

gtext('Noufal P 13400043');