clc;
clear;
clf;

% Initializing Layout
my_layout = tiledlayout(3, 2);

t = -10:0.001:10;

% ----- (a)
xa = (t == -2);
nexttile(1);
plot(t, xa);
xlim([-3 0]);
ylim([-0.5 1.5]);

% ----- (b)
xb = xa - (t == 2);
nexttile(2);
plot(t, xb);
xlim([-4 4]);
ylim([-1.2 1.2]);

% ----- (c)
xc = t .* (t >= 0);
nexttile(3);
plot(t, xc);
ylim([-0.5 10.5]);

% ----- (d)
xd = heaviside(t) - heaviside(t - 5);
nexttile(4);
plot(t, xd);
xlim([-0.5 6]);
ylim([-0.2 1.2]);

% ----- (e)
xe = ramp(t + 1) - ramp(t) + ramp(t - 2);
nexttile(5);
plot(t, xe);


function [r_out] = ramp(input)
    r_out = input .* (input >= 0);
end