clc;
clearvars *;
t = -20:1:20;
x1ret = x1(1 * t);
x2ret = x2(1 * t);

subplot(4,2,1)
stem(t, x1ret);
xlabel('n');
ylabel('x1[n]');
title('x1[n]');

subplot(4,2,2);
stem(t, x2ret);
xlabel('n');
ylabel('x2[n]');
title('x2[n]');

xa = x1ret .* x2ret;
subplot(4,2,3);
stem(t, xa);
xlabel('n');
ylabel('x1[n]x2[n]');
title('x1[n]x2[n]');

xb = (4 .* x1ret) + (2 .* x2ret);
subplot(4,2,4);
stem(t, xb);
xlabel('n');
ylabel('4x1[n] + 2x2[n]');
title('4x1[n] + 2x2[n]');

xc = x1(2 * t) .* x2(3 * t);
subplot(4,2,5);
stem(t, xc);
xlabel('n');
ylabel('x1[2n]x2[3n]');
title('x1[2n]x2[3n]');

xd = (x1(2 * t)) ./ (x2(-1 * t));
subplot(4,2,6);
stem(t, xd);
xlabel('n');
ylabel('x1[2n]/x2[-n]');
title('x1[2n]/x2[-n]');

xe = (3 .* (x1(0.5 * t))) + (2 .* (x2(t / 3)));
subplot(4,2,7);
stem(t, xe);
xlabel('n');
ylabel('3x1[n/2] + 2x2[n/3]');
title('3x1[n/2] + 2x2[n/3]');
sgtitle('Operations - Inlab - Q1 - 22102109')
function [n] = x1(inpn)
    n = inpn >= 0;
    n = n .* (2 * (sin(2 * pi * inpn / 8)));
end
function [n] = x2(inpn)
    n = (-4) *  exp(-((inpn ./ 6).^2));
end