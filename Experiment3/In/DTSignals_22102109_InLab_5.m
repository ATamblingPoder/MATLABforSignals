clc;
clear all;
n = -4:0.5:4;
a = 2;
y = exp(-1 * a * n);
stem(n,y);
title('Exponential Function - 22102109');
xlabel('n');
ylabel('e^{-an} for a = 2');