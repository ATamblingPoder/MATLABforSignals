clc;
clearvars;
syms func(k,n);
syms final(n);

func(k,n) = ((-0.5) ^ (abs(k))) * exp(-1i * k * n);

final = 0;
for var = -10:1:10
    final = final + func(var, n);
end
fplot(final);