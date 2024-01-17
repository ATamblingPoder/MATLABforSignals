clc;
clear all;
n = -4:0.25:10;
y = sinc(n);
stem(n,y);
xlabel('n');
ylabel('sinc(n)');
title('sin(n) -- 22102109')