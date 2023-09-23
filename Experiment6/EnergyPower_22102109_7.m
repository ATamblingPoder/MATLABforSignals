clc;
clear all;
t = 0:1:200;
xt = (cos(pi * t)) .^ 2;
ze_sum = sum(xt);
ze_lim = ze_sum / 401;
fprintf("This is a power signal with power %f", ze_lim);
