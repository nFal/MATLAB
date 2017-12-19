x=-4:.001:4;
y=[zeros(1,4000) 1 zeros(1,4000)];
plot(x,y);
xlabel('Time');
ylabel('Amplitude');
title('Impulse signal');