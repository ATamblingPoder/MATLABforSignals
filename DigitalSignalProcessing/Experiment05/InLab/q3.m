clc;
clearvars;

syms z;
X = 1 + 2.5/z + 2.5/z^2 + 1.25/z^3 + 0.3125/z^4 + 0.03125/z^5;
[N,D] = numden(X);
cfn = sym2poly(N);
cfd = sym2poly(D);
zplane(cfn,cfd);
grid on;
if abs(roots(cfn)) > 1
    disp("Some roots lie outside unit circle.")
else
    disp("All roots lie inside unit circle.")
end
