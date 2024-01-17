clc;
clearvars t xt energy;
t = -4:1:4;
xt = abs(sin(pi * t));
xt = xt .^ 2;
energy = sum(xt);
fprintf("This is a zero signal, as energy = %f", energy);

