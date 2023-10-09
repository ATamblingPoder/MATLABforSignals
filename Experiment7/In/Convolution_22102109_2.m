clc;
clear;

t = tiledlayout(3, 4);

x1 = [-2 0 1 -1 3];
h1 = [1 2 0 -1];
nexttile(1);
stem(x1);
xlabel('n');
ylabel('x[n]');
title('Part (a) - x[n]');
nexttile(2);
stem(h1);
xlabel('n');
ylabel('h[n]');
title('Part (a) - h[n]');
nexttile(3);
stem(conv(x1, h1));
xlabel('n');
ylabel('x[n] * h[n]');
title('Built in conv(x, h)');
nexttile(4);
stem(convolve(x1, h1));
xlabel('n');
ylabel('x[n] * h[n]');
title('Manual convolve(x, h)');

n = -5:1:5;
x2 = (n >= 0);
h2 = exp(-n) .* x2;
nexttile(5);
stem(x2);
xlabel('n');
ylabel('x[n]');
title('Part (b) - x[n]');
nexttile(6);
stem(h2);
xlabel('n');
ylabel('h[n]');
title('Part (b) - h[n]');
nexttile(7);
stem(conv(x2, h2));
xlabel('n');
ylabel('x[n] * h[n]');
title('Built in conv(x, h)');
nexttile(8);
stem(convolve(x2, h2));
xlabel('n');
ylabel('x[n] * h[n]');
title('Manual convolve(x, h)');

x3 = cos(pi * 0.5 * n) .* x2;
tn = (n >= 1);
h3 = ((-1) .^ n) .* tn;
nexttile(9);
stem(x3);
xlabel('n');
ylabel('x[n]');
title('Part (c) - x[n]');
nexttile(10);
stem(h3);
xlabel('n');
ylabel('h[n]');
title('Part (c) - h[n]');
nexttile(11);
stem(conv(x3, h3));
xlabel('n');
ylabel('x[n] * h[n]');
title('Built in conv(x, h)');
nexttile(12);
stem(convolve(x3, h3));
xlabel('n');
ylabel('x[n] * h[n]');
title('Manual convolve(x, h)');

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