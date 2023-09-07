clc;
clearvars *;
t = -20:1:20;

x = X(t);
subplot(3, 2, 1);
stem(t, x);
xlabel('n');
ylabel('X[n]');
title('X[n]');

xa = X(-1 * t);
subplot(3, 2, 2);
stem(t, xa);
xlabel('n');
ylabel('X[-n]');
title('X[-n]');

xb = X(3 - t);
subplot(3,2,3);
stem(t, xb);
xlabel('n');
ylabel('X[3 - n]');
title('X[3 - n]');

xc = X(2 * t);
subplot(3, 2, 4);
stem(t, xc);
xlabel('n');
ylabel('X[2n]');
title('X[2n]');

xd = X(t / 2);
subplot(3,2,5);
stem(t, xd);
xlabel('n');
ylabel('X[n/2]');
title('X[n/2]');
sgtitle('Operations - Inlab - Q2 - 22102109')

function [n] = X(inpn)
    n = zeros(1, length(inpn));
    for i = 1:length(inpn)
        if(inpn(i) < -6)
            n(i) = -4;
        elseif(inpn(i) < 3 && inpn(i) >= -6)
            n(i) = inpn(i);
        else
            n(i) = 2 / inpn(i);
        end
    end
end