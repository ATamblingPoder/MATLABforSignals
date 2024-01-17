clc;
clearvars *;

t = -5:0.1:5;

x = X(t);
subplot(4,1,1);
plot(t, x);
xlabel('t');
ylabel('x(t)');
title('x(t)');

xa = X(3 * t);
subplot(4,1,2);
plot(t, xa);
xlabel('t');
ylabel('x(3t)');
title('x(3t)');

xb = X((3 * t) + 2);
subplot(4,1,3);
plot(t, xb);
xlabel('t');
ylabel('x(3t + 2)');
title('x(3t + 2)');

xc = X(2 - t);
subplot(4,1,4);
plot(t, xc);
xlabel('t');
ylabel('x(2 - t)');
title('x(2 - t)');
sgtitle('Operations - Inlab - Q3 - 22102109')

function [t] = X(inpt)
    t = zeros(1, length(inpt));
    for i = 1:length(inpt)
        if(inpt(i) > -1 && inpt(i) <=0)
            t(i) = inpt(i) + 1;
        end
        if(inpt(i) > 0 && inpt(i) <= 1)
            t(i) = 1 - inpt(i);
        end
    end
end
