clc;
clearvars;

t = -1:0.00005:3;
x_out = X(t);
x_out = x_out .^ 2;
format long;
area = trapz(t, x_out);
fprintf('Energy is %f\n', area);
fprintf('As Energy is finite, Power is 0\n');

function [t] = X(input)
    t = zeros(1, length(input));
    for i = 1:length(input)
        if(input(i) >= 0 && input(i) <= 1)
            t(i) = input(i);
        elseif(input(i) > 1 && input(i) <= 2)
            t(i) = 2 - input(i);
        else
            t(i) = 0;
        end
    end
end