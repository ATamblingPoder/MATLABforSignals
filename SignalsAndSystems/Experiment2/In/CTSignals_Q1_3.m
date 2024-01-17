clear all;
clc;
t = -2:0.05:5
for i = 1:length(t)
    if(t(i) <= 0)
        x(i) = 0;
    else
        x(i) = t(i);
    end
end
plot(t,x)
xlabel('t')
ylabel('x(t)')
title('Ramp Function - 22102109')
