clc;
clear;
clf;

% Initializing Layout
my_layout = tiledlayout(4,2);
xlabel(my_layout, "t");
ylabel(my_layout, "x_{i}(t)");
title(my_layout, "Question 1 - Inlab")

t = -15:0.00025:15;
% ----- (a)
x1 = dirac(t);
nexttile(1);
plot(t,x1);
title("Unit Impulse, \delta(t)")

% ----- (b)
x2 = heaviside(t) .* (abs(t) <= 2);
nexttile(2);
plot(t, x2);
xlim([-2 2]);
ylim([-0.2 1.2]);
title("Unit Step, u(t)");

% ----- (c)
x3 = t .* (t >= 0) .* (t < 5);
nexttile(3);
plot(t, x3);
xlim([-2 5]);
ylim([-0.5 5.5]);
title("Unit Ramp, r(t)");

% ----- (d)
f = 200; % Hertz
x4 = 3 .* sin(2 .* pi .* f .* t);
nexttile(4);
plot(t, x4);
xlim([0 0.02]);
ylim([-3.5 3.5]);
title("3 * sin(2 * \pi * f * t)");

% ----- (e)
x5 = exp(-0.5 .* t) .* (abs(t) <= 4);
nexttile(5);
plot(t, x5);
xlim([-4 4]);
ylim([-0.5 8]);
title("e^{-0.5t}");

x5 = exp(-1.5 .* t) .* (abs(t) <= 4);
nexttile(6);
plot(t, x5);
xlim([-4 4]);
title("e^{-1.5t}");

% ----- (f)
x6 = 1 .* (abs(t) <= 2);
nexttile(7);
plot(t, x6);
xlim([-3 3]);
ylim([-0.5 1.5]);
title("rect(t) for t = [-2,2]");

% ----- (g)
x7 = sinc(t) .* (t >= -1) .* (t <= 10);
nexttile(8);
plot(t, x7);
xlim([-1 10]);
title("sinc(t)")