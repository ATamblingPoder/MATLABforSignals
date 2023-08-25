clc;
clear all;
n = -5:1:5;
subplot(3,2,1);
xa = zeros(1, length(n));
for i = 1:length(n)
    if(n(i) <= 0)
        xa(i) = -n(i);
    end
end
stem(n,xa);
xlabel('n');
ylabel('r[-n]')
title('ramp[-n] (22102109)')


subplot(3,2,2);
xb = exp(n - 1);
stem(n,xb);
xlabel('n');
ylabel('e^{n - 1}');
title('e^{n-1} (22102109)')


subplot(3,2,3);
xct1 = n - 1;
xct2 = zeros(1, length(n));
for i = 1:length(n)
    if(n(i) == 2)
        xct2(i) = 1;
    end
end
xc = xct1 .* xct2;
stem(n, xc);
xlabel('n');
ylabel('[n - 1] δ[n - 2]');
title('[n - 1] δ[n - 2] (22102109)')


subplot(3,2,4);
xd1 = n >= -1;
xd2 = n >= 0;
xd3 = n >= 1;
xd = xd1 - (2 .* xd2) - xd3;
stem(n, xd);
xlabel('n');
ylabel('x[n]');
title('u [n + 1] – 2u[ n] + u [n-1] (22102109)')


subplot(3,2,5);
xe1 = zeros(1, length(n));
xe2 = xe1;
for i = 1:length(n)
    if(n(i) >= -3)
        xe1(i) = n(i);
    end
    if(n(i) >= 3)
        xe2(i) = n(i);
    end
end
xe = xe1 - xe2;
stem(n, xe);
xlabel('n');
ylabel('r[n + 3] - r[n - 3]')
title('ramp[n+3] - ramp[n-3] (22102109)')

subplot(3,2,6)
a = 0.5;
xf = (a .^ n) .* (cos(2 * pi * n));
stem(n, xf);
xlabel('n')
ylabel('a^{n} cos(2 *pi * n)');
title('a^{n}*cos(2πn) (22102109)')
sgtitle('Question 1 (PostLab) - 22102109')