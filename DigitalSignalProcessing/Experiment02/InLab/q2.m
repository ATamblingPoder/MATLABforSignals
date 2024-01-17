clc;
clear;
clf;

% Initializing Layout
my_layout = tiledlayout(4,2);
xlabel(my_layout, "t");
ylabel(my_layout, "x_{i}(t)");
title(my_layout, "Question 2 - Inlab")

n = -15:1:15;
% ----- (a)
x1 = dirac(n);
nexttile(1);
stem(n,x1);
title("Unit Impulse, \delta(n)")

% ----- (b)
x2 = heaviside(n) .* (abs(n) <= 2);
nexttile(2);
stem(n, x2);
xlim([-2 2]);
ylim([-0.2 1.2]);
title("Unit Step, u(n)");

% ----- (c)
x3 = n .* (n >= 0) .* (n < 5);
nexttile(3);
stem(n, x3);
xlim([-2 5]);
ylim([-0.5 5.5]);
title("Unit Ramp, r(n)");

% ----- (d)
n = -15:0.0005:15;
f = 200; % Hertz
x4 = 3 .* sin(2 .* pi .* f .* n);
nexttile(4);
stem(n, x4);
xlim([0 0.02]);
ylim([-3.5 3.5]);
title("3 * sin(2 * \pi * f * n)");

% ----- (e)
n = -15:0.5:15;
x5 = exp(-0.5 .* n) .* (abs(n) <= 4);
nexttile(5);
stem(n, x5);
xlim([-4 4]);
ylim([-0.5 8]);
title("e^{-0.5n}");

x5 = exp(-1.5 .* n) .* (abs(n) <= 4);
nexttile(6);
stem(n, x5);
xlim([-4 4]);
title("e^{-1.5n}");

% ----- (f)
x6 = 1 .* (abs(n) <= 2);
nexttile(7);
stem(n, x6);
xlim([-3 3]);
ylim([-0.5 1.5]);
title("rect(n) for n = [-2,2]");

% ----- (g)
x7 = sinc(n) .* (n >= -1) .* (n <= 10);
nexttile(8);
stem(n, x7);
xlim([-1 10]);
title("sinc(n)")