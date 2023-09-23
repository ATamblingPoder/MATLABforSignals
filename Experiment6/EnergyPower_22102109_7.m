clc;
clear n h the_limit;
syms n h;
func = (cos(pi * n)).^ 2;
the_limit = limit( (1/(2*h)) * sum(func, n, -h+h, h), h, Inf );
disp(the_limit)
