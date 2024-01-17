tic;
clc;
clearvars *;
syms n k;
h_1 = dirac(k);
h_2 = heaviside(k - n) - heaviside(k - n - 2);
h_12_conv = int(h_1 * h_2, k, -Inf, Inf);
h_3 = dirac(n + 1);

final = h_12_conv + h_3;
fplot(final);
ylim([-0.25 1.25]);
clearvars *;
toc;