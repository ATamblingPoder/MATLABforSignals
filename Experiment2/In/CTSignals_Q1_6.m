clear all;
clc;
t = -3:0.01:3;
for i = 1:length(t)
    if(abs(t(i)) >= 2)
        x(i) = 0
    else
        x(i) = 1
    end
end
plot(t,x)
xlabel('t')
ylabel('x(t)')
title('rect(t) - 22102109')
