clc;
clearvars;
syms t tau;

% Declaring the symbolic functions to be used
square_wave = heaviside(t + 0.5) - heaviside(t - 0.5);
tri = triangularPulse(t);

% Plotting the base functions
my_tile = tiledlayout(2,2);
title(my_tile, "\fontname{Inter}CT Convolutions - 22102109 - InLab - Q3");
nexttile(1);
fplot(square_wave, [-1.75 1.75]);
ylim([-0.25 1.25]);
title("\it Square Wave");

nexttile(3);
fplot(tri);
ylim([-0.25 1.25]);
title("\it tri(t)");

% Continuous Convolution Integral
clearvars square_wave tri;
f_1_tau = heaviside(tau + 0.5) - heaviside(tau - 0.5);
f_2_minus = triangularPulse(t - tau);
conv_1 = int(f_1_tau * f_2_minus, tau, -Inf, Inf);
disp(conv_1)
nexttile(2);
fplot(conv_1);
ylim([-0.25 1.25]);
title("\it Continuous Convolution using symbolic")


% Discrete Approximation in order to use conv()
n = -5:0.05:5;
f_1_dt = (abs(n) <= 0.5);
f_2_dt = triangularPulse(n);
ct_conv = conv(f_1_dt, f_2_dt);
ct_conv = ct_conv / 20;
nexttile(4);
plot(-5:0.025:5, ct_conv);
ylim([-0.25 1.25]);
title("\it DT Approximation using conv")
clearvars;