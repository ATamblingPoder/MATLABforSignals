clc;
clear;
n = -10:1:10;

% ----- (a)
my_conv = self_conv([1 3 -2 1], [1 1 0 0]);
inbuilt_conv = conv([1 3 -2 1], [1 1 0 0]);
my_layout = tiledlayout(3,2);
title(my_layout, "Q1 -- InLab -- 22102109");

nexttile(1, [1 2]);
stem([1 3 -2 1], 'filled');
title("x[n]");

nexttile(3, [1 2]);
stem([1 1 0 0], 'filled');
title("h[n]");

nexttile(5);
stem(my_conv, 'filled');
title("x[n] * h[n] -- using custom function");

nexttile(6);
stem(inbuilt_conv, 'filled');
title("x[n] * h[n] -- using \it conv");



% ----- (b)
my_conv = self_conv([1 1 1 0 0 0], [0 5 2 2 5 1]);
inbuilt_conv = conv([1 1 1 0 0 0], [0 5 2 2 5 1]);
my_layout = tiledlayout(3,2);
title(my_layout, "Q2 -- InLab -- 22102109");

nexttile(1, [1 2]);
stem([1 1 1 0 0 0], 'filled');
title("x[n]");

nexttile(3, [1 2]);
stem([0 5 2 2 5 1], 'filled');
title("h[n]");

nexttile(5);
stem(my_conv, 'filled');
title("x[n] * h[n] -- using custom function");

nexttile(6);
stem(inbuilt_conv, 'filled');
title("x[n] * h[n] -- using \it conv");

% ----- (c)
xn = heaviside(n);
hn = exp(-n) .* heaviside(n);
my_conv = self_conv(xn, hn);
inbuilt_conv = conv(xn, hn);
my_layout = tiledlayout(3,2);
title(my_layout, "Q3 -- InLab -- 22102109");

nexttile(1, [1 2]);
stem(xn, 'filled');
title("x[n]");

nexttile(3, [1 2]);
stem(hn, 'filled');
title("h[n]");

nexttile(5);
stem(my_conv, 'filled');
title("x[n] * h[n] -- using custom function");

nexttile(6);
stem(inbuilt_conv, 'filled');
title("x[n] * h[n] -- using \it conv");