clc;
clearvars;
clf;

% Initializing Layout
my_layout = tiledlayout(2,1);

% Gaussian Random Variables with given
% mean and variance
rand1 = random("Normal", 0, 1, [1 1000]);
rand2 = random("Normal", 0.2, 1, [1 1000]);

% Plotting the random signals first
nexttile(1);
r_plot1 = plot(rand1, 'r.');
hold on;
r_plot2 = plot(rand2, 'g+');
hold off;
legend([r_plot1, r_plot2], "Random Signal No. 1", "Random Signal No. 2", 'Location','southwest');
title(nexttile(1), "Random Signals");

% Preinitializing for speed
ave1 = zeros(1, 1000);
ave2 = zeros(1, 1000);

% Calculating average for first "i" values
for i = 1:1000
    ave1(i) = sum(rand1(1:i)) / i;
    ave2(i) = sum(rand2(1:i)) / i;
end

% Plotting average for each "i" value
nexttile(2);
av_plot1 = plot(ave1, 'r');
hold on;
av_plot2 = plot(ave2, 'g');
hold off;
legend([av_plot1, av_plot2], "Average of First Signal", "Average of Second Signal", 'Location','southwest');
title(nexttile(2), "Average of signals for i samples");