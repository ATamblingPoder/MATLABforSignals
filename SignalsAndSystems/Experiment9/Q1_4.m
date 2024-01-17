clc;
clearvars *;
syms t;

my_tile = tiledlayout(1,2);
% a_1 * x_1(t) + a_2 * x_2(t) should be equal to
% a_1 * x_1(t) + a_2 * x_2(t)

x_1 = 2 * t;
x_2 = t;
a_1 = 2;
a_2 = 1;
lhs = a_1 * x_1 + a_2 * x_2;
rhs = a_1 * x_1 + a_2 * x_2;
nexttile(1);
fplot([lhs, rhs])
legend('a_{1} x_{1}(t) + a_{2} x_{2}(t)','a_{1} x_{1}(t) + a_{2} x_{2}(t)')
if lhs == rhs
    fprintf("Linear, ")
else
    fprintf("Non-Linear, ")
end
clearvars all -except t;

tau = 2;
x_1 = 2 * (t - tau);
lhs = x_1;
rhs = 2 * (t - tau);
nexttile(2);
fplot([lhs, rhs])
legend('y(t - \tau)','x(t - \tau)')
if lhs == rhs
    fprintf("Time-Invariant System\n")
else
    fprintf("Time-Variant System\n")
end
clearvars *;