clc;
clearvars;

syms z n;
X = (1 + 2/z + 1/z^2) / (1 - 1/z + 0.3561/z^2);
[N,D] = numden(X);
cfn = sym2poly(N);
cfd = sym2poly(D);
zplane(cfn,cfd);
grid on;

x = iztrans(X);
disp("The Inverse Z-Transform is: ")
disp(x)