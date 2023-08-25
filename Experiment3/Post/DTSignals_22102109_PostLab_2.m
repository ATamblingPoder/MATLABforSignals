clc;
clear all;
subplot(2,1,1);
sig1 = zeros(1,1000);
sig2 = sig1;
sig1 = 1 * randn(1,1000) + 0;
sig2 = 1 * randn(1,1000) + 0.2;
p1 = plot(sig1);
hold on;
p2 = plot(sig2, 'red')
hold off;
legend([p1, p2], 'sig1', 'sig2')
xlabel('x')
ylabel('random[x]')
title('2 Random Signals (22102109)')

subplot(2,1,2);
ave1 = zeros(1,1000);
ave2 = ave1;
for i = 1:1000
    ave1(i) = mean(sig1(1:i));
    ave2(i) = mean(sig2(1:i));
end
ap1 = plot(ave1);
hold on;
ap2 = plot(ave2, 'red');
hold off;
legend([ap1, ap2], 'ave1', 'ave2');
xlabel('n');
ylabel('average of above signals taking n samples');
title('Average(s) of Random Signals (22102109)');
sgtitle('Random Signals (22102109)')