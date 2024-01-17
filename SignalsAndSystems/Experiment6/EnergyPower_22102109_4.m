clc;
clearvars t xt energy;
t = -1:0.0005:1;
xt = 5 * cos(pi * t);
xt = xt .^ 2;
energy = trapz(t, xt);
fprintf("Energy is %i\n", energy);
fprintf('As Energy is finite, Power is 0\n');