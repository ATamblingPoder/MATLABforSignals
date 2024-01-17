clc;
clearvars;
syms t tau;

my_tile = tiledlayout(1,3);
title(my_tile, "CT Convolutions - 22102109 - PostLab - Q2");

% Plotting the base functions
x_t = heaviside(t) - heaviside(t - 2);
h_t = exp(-t) * heaviside(t);
nexttile(1);
fplot(x_t);
ylim([-0.25 1.25]);
title("\it u(t) - u(t - 2)");

nexttile(2);
fplot(h_t);
xlim([-0.25 5]);
ylim([-0.25 1.25]);
title("\it e^{-t}u(t)");

clearvars x_t h_t;
x_t = heaviside(tau) - heaviside(tau - 2);
h_t = exp(-(t - tau)) * heaviside(t - tau);
the_conv = int(x_t * h_t, tau, -Inf, Inf);
nexttile(3);
fplot(the_conv);
ylim([-0.25 1.25]);
title("\it x(t) * h(t)");