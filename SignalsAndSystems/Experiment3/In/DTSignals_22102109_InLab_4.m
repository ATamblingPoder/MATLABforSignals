clc;
clear all;
n = -1:0.1:1;
f = 2;
y = 3 * sin(2 * pi * n * f);
stem(n,y);
title('Sinusoidal Function - 22102109');
xlabel('n');
ylabel('sin(n)');
