clc;
clearvars *;
n = -5:0.5:5;
u = n > 0;
un = n < 0;
xe = (u + un)/ 2;
xo = (u - un)/ 2;
subplot(4,1,1)
stem(n,u);
xlabel('n');
ylabel('u(n)');
title('Unit Step Function')

subplot(4,1,2);
stem(n ,un);
xlabel('n');
ylabel('u(-n)');
title('Negative of Unit Step Function');

subplot(4,1,3)
stem(n,xe);
xlabel('n');
ylabel('xe(n)');
title('Even Part of Unit Step Function');

subplot(4,1,4)
stem(n,xo);
xlabel('n');
ylabel('xo(n)');
title('Odd Part of Unit Step Function')
sgtitle('InLab - Q1 - 22102109')