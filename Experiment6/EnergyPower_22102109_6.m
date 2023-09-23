clc;
clearvars t xt energy;
t = -4:1:4;
xt = abs(sin(pi * t));
xt = xt .^ 2;
energy = sum(xt);
fprintf("The Energy is %e\n", energy);
fprintf('As Energy is finite, Power is 0\n');