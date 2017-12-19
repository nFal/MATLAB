x=-4:.001:4;
y=[zeros(1,4000) ones(1,4001)];
plot(x,y);
axis([-4 4 0 1.5]);
xlabel('Time');
ylabel('Amplitude');
title('Unit step signal');
