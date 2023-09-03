clc;
clearvars *;
n = -15:1:15;
u = n >= 0;
un = n < 0;
uten = n > 10;
unten = n < -10;

subplot(4,1,1);
x = u - uten;
stem(n,x);
xlabel('n');
ylabel('x(n)');
title('x(n) = u(n) - u(n - 10)');

subplot(4,1,2);
xn = un - unten;
stem(n, xn);
xlabel('n');
ylabel('x(-n)');
title('x(-n) = u(-n) - u(-n + 10)');

subplot(4,1,3);
xe = (x + xn)/ 2;
stem(n, xe);
xlabel('n');
ylabel('xe(n)');
title('Even Part of Above Signal');

subplot(4,1,4);
xo = (x - xn) / 2;
stem(n, xo);
xlabel('n');
ylabel('xo(n)');
title('Odd Part of Above Signal');
sgtitle('InLab - Q2 - 22102019')