clc;
clearvars;

t = -3:0.05:9;
subplot(4,1,1);
orig = X(t);
plot(t, orig);
xlabel('t');
ylabel('X(t)');

subplot(4,1,2);
xa = X(t + 1);
xa = 3 .* xa;
plot(t, xa);
xlabel('t');
ylabel('3X(t + 1)');

subplot(4,1,3);
xb = X(4 * t);
xb = 0.5 .* xb;
plot(t, xb);
xlabel('t');
ylabel('0.5 * X(4t)');

subplot(4,1,4);
xc = X((t - 1) .* 0.5);
xc = -2 .* xc;
plot(t, xc);
xlabel('t');
ylabel('-2 * X((t - 1)/2)');
sgtitle('Q3 - PostLab - 22102109')

function [n] = X(inpn)
    n = zeros(1, length(inpn));
    for i = 1:length(inpn)
        if(inpn(i) <= -2)
            n(i) = 0;
        elseif(inpn(i) > -2 && inpn(i) <= 0)
            n(i) = -4 - (2 * inpn(i));
        elseif(inpn(i) > 0 && inpn(i) <= 4)
            n(i) = -4 + (3 * inpn(i));
        elseif(inpn(i) > 4 && inpn(i) <= 8)
            n(i) = 16 - (2 * inpn(i));
        else
            n(i) = 2;
        end
    end
end