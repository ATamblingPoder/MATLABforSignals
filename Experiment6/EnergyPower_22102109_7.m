clc;
clear all;
t = 0:1:400000;
xt = (cos(pi * t)) .^ 2;
ze_sum = sum(xt);
ze_lim = ze_sum / 800001;
fprintf("This is a power signal with power %f", ze_lim);
