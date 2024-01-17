clc;
clear;
n = -7:1:7;
u2n = (n >= -2);
u4n = (n >= 4);
xn = (2 .^ n) .* (u2n - u4n);
clearvars u2n u4n;
hn = zeros(1, length(n));
for i = 1:length(n)
    if(n(i) < -1)
        hn(i) = 0;
    elseif(n(i) < 4 && n(i) >= -1)
        hn(i) = n(i) .^ 2;
    elseif(n(i) < 6 && n(i) >= 4)
        hn(i) = 3;
    else
        hn(i) = 0;
    end
end

t = tiledlayout(3, 2);
title(t, "Q2 - PostLab - 22102109");
nexttile(1, [1,2]);
stem(n, xn);
xlabel('n');
ylabel('x[n]');
title('2^n * (u[n+2] - u[n-4])');

nexttile(3, [1, 2]);
stem(n, hn);
xlabel('n');
ylabel('h[n]');
title('{\it Piecewise-Defined} h[n]')

nexttile(5);
stem(convolve(xn, hn));
xlabel('n');
ylabel('x[n] * h[n]');
title('Manual Convolve Function');

nexttile(6);
stem(conv(xn, hn));
xlabel('n');
ylabel('x[n] * h[n]');
title('Built-In Convolve Function');

function cnv = convolve(a, b)
    L = length(a) + length(b) - 1;
    cnv = zeros(1, L);
    a1 = [a, zeros(1, L - length(a))];
    b1 = [b, zeros(1, L - length(b))];
    for i = 1:L
        c = 0;
        for j = 1:i
            c = c + a1(j) * b1(i - j + 1);
        end
        cnv(i) = c;
    end
end
