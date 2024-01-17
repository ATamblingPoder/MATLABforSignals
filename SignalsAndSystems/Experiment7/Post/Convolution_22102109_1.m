clc;
clear;
n = -10:1:10;
un = (n >= 0);
h1 = ((-0.5) .^ n) .* un;
un5 = (n >= 5);
h2 = un - un5;
xn = (n == 0);
clearvars un un5;
t = tiledlayout(2,1);
title(t, "Q1 - PostLab - 22102109");
wn = conv(xn, h1);
yn = conv(wn, h2);

nexttile(1);
stem(yn);
xlabel('n');
ylabel('[x[n] * h_1[n]] * h_2[n]');
title('Part - a');
clearvars yn;

gn = conv(h1, h2);
yn = conv(xn, gn);
nexttile(2);
stem(yn);
xlabel('n');
ylabel('x[n] * [h_1[n] * h_2[n]]');
title('Part - b');
