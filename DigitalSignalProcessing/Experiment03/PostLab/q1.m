clc;
clear;

n = -10:1:10;

h1 = ((-0.5) .^ n) .* heaviside(n);
h2 = heaviside(n) - heaviside(n - 5);
xn = (n==0);

my_layout = tiledlayout(2, 1);
title(my_layout, "Q1 - PostLab - 22102109")

wn = conv(xn, h1);
nexttile(1);
stem(wn, 'filled');


yn = conv(wn, h2)
nexttile(2);
stem(yn, 'filled');