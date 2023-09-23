clc;
clearvars;
syms x h;
func = ((5 * cos(pi * x)) + sin(5 * pi * x)) ^ 2;
the_lim = limit((1/(2*h)) * (int(func,x, -h, h)), h, Inf);
fprintf( "\n\rThe power is %i", the_lim)
fprintf( "\nAs it is a power signal, energy is zero.\n")