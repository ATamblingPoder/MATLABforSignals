clear all;
clc;
t = -4:0.01:4;
x1 = exp(-0.5 * t);
x2 = exp(-1.5 * t);
subplot(2,1,1);
plot(t,x1)
xlabel('t')
ylabel('x1(t)')
title('Exponential with a = 0.5 - 221092109')

subplot(2,1,2);
plot(t,x2)
xlabel('t')
ylabel('x2(t)')
title('Exponential with a = 1.5 - 22102109')
