clc;
clear all;
t = 0:1:20;
xt = (cos(pi * t)) .^ 2;
ze_sum = sum(xt);
ze_lim = ze_sum / 41;
disp(ze_lim);
