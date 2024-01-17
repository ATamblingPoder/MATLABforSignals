function [x, y] = getCircle(center, r)
theta = linspace(0, pi * 2);
x = r * cos(theta);
y = r * sin(theta);