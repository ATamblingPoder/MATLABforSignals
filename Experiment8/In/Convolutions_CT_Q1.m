clc;
clearvars;
syms t tau gamma;

% Declaring the symbolic functions to be used later
f_1 = dirac(t);
f_2 = triangularPulse(t);
f_3 = heaviside(t) - heaviside(t - 5);

% Plotting the base functions of which we will
% the convolution of
my_tile = tiledlayout(3, 4);
title(my_tile, "\fontname{Inter}CT Convolutions - 22102109 - InLab - Q1");
nexttile(1, [1 2]);
fplot(f_1);
title("\delta(t)")

nexttile(5, [1 2]);
fplot(f_2);
ylim([-0.25 1.25])
title("\it tri(t)")

nexttile(9, [1 2]);
fplot(f_3, [-1 6]);
ylim([-0.5 1.5])
title("\it u(t) - u(t - 5)")


% Part 1 -- Commutativity
f_1_tau = dirac(tau);
f_2_minus = triangularPulse(t - tau);
part_1_convolution_1 = int(f_1_tau * f_2_minus, tau, -Inf, Inf);
nexttile(3);
fplot(part_1_convolution_1)
ylim([-0.25 1.25])
title("\delta(t) * tri(t)");

f_2_tau = triangularPulse(tau);
f_1_minus = dirac(t - tau);
part_1_convolution_2 = int(f_2_tau * f_1_minus, tau, -Inf, Inf);
nexttile(4);
fplot(part_1_convolution_2)
ylim([-0.25 1.25])
title("\ittri(t) * \delta(t)")


% Part 2 -- Commutativity
f_23_minus = f_2_minus + (heaviside(t - tau) - heaviside(t - tau -5));
part_2_convolution_1 = int(f_1_tau * f_23_minus, tau, -Inf, Inf);
nexttile(7);
fplot(part_2_convolution_1, [-5 10])
ylim([-0.25 2.25])
title("\it\delta(t) * (tri(t) + u(t) - u(t - 5))")

f_3_minus = heaviside(t - tau) - heaviside(t - tau - 5);
part_2_convolution_2 = int(f_1_tau * f_2_minus, tau, -Inf, Inf);
part_2_convolution_2 = part_2_convolution_2 + int(f_1_tau * f_3_minus, tau, -Inf, Inf);
nexttile(8);
fplot(part_2_convolution_2, [-5 10])
ylim([-0.25 2.25])
title("\it\delta(t) * tri(t) + \delta(t) * (u(t) - u(t - 5))")


% Part 3 -- Associativity
f_2_gamma = triangularPulse(gamma);
f_3_tau_minus = heaviside(t - tau - gamma) - heaviside(t - tau - gamma - 5);
f_23_conv_t_tau = int(f_2_gamma * f_3_tau_minus, gamma, -Inf, Inf);
part_3_convolution_1 = int(f_1_tau * f_23_conv_t_tau, tau, -Inf, Inf);
nexttile(11);
fplot(part_3_convolution_1, [-5 10])
ylim([-0.5 1.5])
title("\it\delta(t) * (tri(t) * (u(t) - u(t - 5)))")

f_1_gamma = dirac(gamma);
f_2_tau_gamma = triangularPulse(tau - gamma);
f_12_tau = int(f_1_gamma * f_2_tau_gamma, gamma, -Inf, Inf);
part_3_convolution_2 = int(f_12_tau * f_3_minus, tau, -Inf, Inf);
nexttile(12)
fplot(part_3_convolution_2, [-5 10])
ylim([-0.5 1.5])
title("\it(\delta(t) * tri(t)) * (u(t) - u(t - 5))")
