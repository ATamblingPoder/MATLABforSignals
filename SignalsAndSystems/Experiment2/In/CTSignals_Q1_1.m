clear all;
clc;
t = -10:0.1:10;
for i = 1:length(t)
    if (t(i) == 0)
        x(i) = 1;
    else
        x(i) = 0;
    end
end
plot(t,x)
xlabel('t')
ylabel('x(t)')
title('Delta Function - 22102109')
