clear all;
clc;
t = -2:0.05:2;
for i = 1:length(t)
    if(t(i) < 0)
        x(i) = 0;
    else
        x(i) = 1;
    end
end
plot(t,x)
xlabel('t')
ylabel('x(t)')
title('Unit Step Function - 22102109')
