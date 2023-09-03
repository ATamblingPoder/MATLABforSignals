clc;
clearvars *;
x = [0 0 0 0 1 2 4 7 9 4 5];
xn = [5 4 9 7 4 2 1 0 0 0 0];
n = -5:1:5;
xe = (x + xn) / 2;
xo = (x - xn)/ 2;

subplot(4,1,1);
stem(n, x);
xlabel('n');
ylabel('x[n]');
title('x[n]');

subplot(4,1,2);
stem(n, xn);
xlabel('n');
ylabel('x[-n]');
title('x[-n]');

subplot(4,1,3);
stem(n, xe);
xlabel('n');
ylabel('xe[n]');
title('Even Part of above signal');

subplot(4,1,4);
stem(n, xo);
xlabel('n');
ylabel('xo(n)');
title('Odd Part of above signal');
sgtitle('InLab - Q3 - 22102109')