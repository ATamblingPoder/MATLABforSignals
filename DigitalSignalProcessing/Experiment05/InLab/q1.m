clc;
clearvars;

% Find Z-Transform of x[n] = {2,1,3,-4,1,2}
% Matlab inbuilt ztrans expects a discrete array of infinite length, i.e. sym
% but as we are given limited values, we have to make a sym using
% kroneckerDelta function

syms n z;
x = 2*kroneckerDelta(n,0) + kroneckerDelta(n-1,0) + 3*kroneckerDelta(n-2,0);
x = x - 4*kroneckerDelta(n-3,0) + kroneckerDelta(n-4,0) + 2*kroneckerDelta(n-5,0);

X = ztrans(x);
disp("The Z-Transform is: ");
disp(X);

[N,D] = numden(X);
cfn = sym2poly(N);
cfd = sym2poly(D);
zplane(cfn,cfd);
grid on;