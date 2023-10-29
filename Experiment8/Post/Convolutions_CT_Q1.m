clc;
clearvars;
syms t tau;

my_tile = tiledlayout(2,3);
title(my_tile, "CT Convolutions - 22102109 - PostLab - Q1");

% Part a
x_t = exp(-3 * t) * heaviside(t);
h_t = heaviside(t + 3);
nexttile(1);
fplot(x_t);
ylim([-0.25 1.25]);
title("\it e^{-3t}u(t)");

nexttile(2);
fplot(h_t);
ylim([-0.25 1.25]);
title("\it u(t + 3)");

clearvars x_t h_t;
x_t = exp(-3 * tau) * heaviside(tau);
h_t = heaviside(t - tau + 3);
the_conv = int(x_t * h_t, tau, -Inf, Inf);
nexttile(3);
fplot(the_conv);
ylim([-0.05 0.4]);
title("\it e^{-3t}u(t) * u(t + 3)");


% Part b
clearvars x_t h_t;
x_t = triangularPulse(t);
h_t = heaviside(t) - heaviside(t - 2) + dirac(t - 3) + dirac(t - 4);
nexttile(4);
fplot(x_t);
ylim([-0.25 1.25]);
title("\it tri(t)");

nexttile(5);
fplot(h_t);
ylim([-0.25 1.25]);
title("\it u(t) - u(t - 2) + \delta(t - 3) + \delta(t - 4)");

clearvars x_t h_t;
x_t = triangularPulse(tau);
h_t = heaviside(t - tau) - heaviside(t - tau - 2);
h_t = h_t + dirac(t - tau - 3) + dirac(t - tau - 4);
the_conv = int(x_t * h_t, tau, -Inf, Inf);
nexttile(6);
fplot(the_conv, [-2 6]);
ylim([-0.25 1.25]);
title("\it x(t) * h(t)");
clearvars;

