clc;
clearvars t xt energy;
t = -0.5:0.000005:0.5;
xt = (cos(pi * t)) .^ 2;
energy = trapz(t, xt);
fprintf("The Energy is %f\n", energy);
fprintf('As Energy is finite, Power is 0\n');