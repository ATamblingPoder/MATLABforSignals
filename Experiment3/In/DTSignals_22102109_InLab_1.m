clc;
clear all;
n = -10:1:10;
y = zeros(length(n));
y((length(n) + 1)/2) = 1;
stem(n,y);
title('Unit Impulse Function - 22102109');
xlabel('n');
ylabel('δ(n)');