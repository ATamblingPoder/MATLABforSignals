clc;
clearvars;
syms t tau gamma;

% Declaring the symbolic function to be used
h_t = exp(-t) * heaviside(t);
x_t = heaviside(t) - heaviside(t - 1);

% Plotting the functions
my_tile = tiledlayout(2,2);
title(my_tile, "\fontname{Inter}CT Convolutions - 22102109 - InLab - Q4");
nexttile(1);
fplot(h_t);
ylim([-0.25 1.25]);
title("\it e^{-t}u(t)");

nexttile(3);
fplot(x_t);
ylim([-0.25 1.25]);
xlim([-1.5 1.5])
title("\it u(t) - u(t - 1)");

% Continuous Convolution Integral
clearvars h_t x_t;
f_1_tau = exp(-tau) * heaviside(tau);
f_2_minus = heaviside(t - tau) - heaviside(t - tau - 1);
conv_1 = int(f_1_tau * f_2_minus, tau, -Inf, Inf);
disp(conv_1)
nexttile(2);
fplot(conv_1);
ylim([-0.25 1.25]);
title("\it Continuous Convolution using symbolic")

% Discrete Approximation in order to use conv()
n = -5:0.005:5;
f_1_dt = exp(-n) .* heaviside(n);
f_2_dt = heaviside(n) - heaviside(n - 1);
ct_conv = conv(f_1_dt, f_2_dt);
ct_conv = ct_conv / 200;
nexttile(4);
plot(-5:0.0025:5, ct_conv);
ylim([-0.25 1.25]);
title("\it DT Approximation using conv")
clearvars;