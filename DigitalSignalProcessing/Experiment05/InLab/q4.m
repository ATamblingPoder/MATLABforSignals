clc;
clearvars;
syms n z;
x = n + 1;
X = ztrans(x);
X = simplifyFraction(X);
disp("The Z-Transform of x[n] = n + 1 is: ")
disp(X);
[N,D] = numden(X);
cfn = sym2poly(N);
cfd = sym2poly(D);
zplane(cfn,cfd);
grid on;