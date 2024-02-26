clc;
clearvars;

syms z;
X = 1 + 0.2/z + 0.3/z^2 + 0.4/z^3 + 0.5/z^4 + 0.6/z^5;
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
