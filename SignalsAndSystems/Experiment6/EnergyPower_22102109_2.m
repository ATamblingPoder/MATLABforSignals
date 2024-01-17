clc;
clearvars;

t = -1:1:11;
x_out = X(t);
x_out = x_out .^ 2;
format long;
area = trapz(t, x_out);
fprintf('Energy is %i\n', area);
fprintf('As Energy is finite, Power is 0\n');

function [n] = X(input)
    n = zeros(1, length(input));
    for i = 1:length(input)
        if(input(i) >= 0 && input(i) < 5)
            n(i) = input(i);
        elseif(input(i) >= 5 && input(i) <= 10)
            n(i) = 10 - input(i);
        else
            n(i) = 0;
        end
    end
end