clear all;
clc;
t = -1:0.001:10;
for i = 1:length(t)
    if(t(i) == 0)
        x(i) = 1;
    else
        x(i) = sin(t(i) * pi) / (t(i) * pi);
    end
end
plot(t,x)
xlabel('t')
ylabel('x(t)')
title('sinc(t) - 22102109')
