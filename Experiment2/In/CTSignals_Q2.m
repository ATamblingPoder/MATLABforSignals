clear all;
clc;
t = -5:0.1:15;
for i = 1:length(t)
    if(t(i) <= 0)
        u1(i) = 0
    else
        u1(i) = 1
    end
end

for i = 1:length(t)
    if(t(i) <= 10)
        u2(i) = 0
    else
        u2(i) = 1
    end
end
x = u1 - u2;
plot(t,x)
xlabel('t')
ylabel('x(t)')
title('u(t) - u(t - 10) - 22102109')
