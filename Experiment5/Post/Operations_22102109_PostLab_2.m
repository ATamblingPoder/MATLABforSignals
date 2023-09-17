clc;
clearvars;

t1 = -4:1:2;
subplot(4,1,1);
x = X(t1);
stem(t1, x);
xlabel('n');
ylabel('X[n]');

t2 = -4:0.5:2;
subplot(4,1,2);
xa = X(2 .* t2);
stem(t2, xa);
xlabel('n');
ylabel('X[2n]');

% Graph is wrong, correction required
t3 = -12:1:6;
t33 = -4:1/3:2;
subplot(4,1,3);
xb = X((3 .* t33) - 1);
stem(t33, xb);
xlabel('n');
ylabel('X[3n - 1]');

t4 = -7:1:7;
subplot(4,1,4);
xc = X(3 - t4);
stem(t4, xc);
xlabel('n');
ylabel('X[3 - n]');
sgtitle('Q2 - PostLab - 22102109')

function [n] = X(inpn)
    n = zeros(1, length(inpn));
    for i = 1:length(inpn)
        if(inpn(i) == -3)
            n(i) = -1;
        elseif(inpn(i) == -1)
            n(i) = 2;
        elseif(inpn(i) == 0 || inpn(i) == 1)
            n(i) = 1;
        end
    end
end