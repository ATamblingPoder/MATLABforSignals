clc;
clearvars *;
x = [2 1 3 4 2 4 3 1 2];
n = -4:1:4;

subplot(4,1,1);
stem(n, x);
xlabel('n');
ylabel('x[n]');
title('x[n]');

subplot(4,1,2);
stem(n, x);
xlabel('n');
ylabel('x[-n]');
title('x[-n]');

subplot(4,1,3);
xe = (x + x)/ 2;
stem(n, xe);
xlabel('n');
ylabel('xe[n]');
title('xe[n]');

subplot(4,1,4);
xo = (x - x)/ 2;
stem(n, xo);
xlabel('n');
ylabel('xo[n]');
title('xo[n]');
sgtitle('InLab - Q4 - 22102109')