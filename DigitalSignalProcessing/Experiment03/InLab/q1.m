clc;
clearvars;
clf;
n = -2:1:10;

% ----- (a)
my_conv = self_conv([1 3 -2 1], [1 1 0 0]);
inbuilt_conv = conv([1 3 -2 1], [1 1 0 0]);
my_layout = tiledlayout(3,2);
nexttile(1, [1,2]);
stem([1 3 -2 1], 'filled');
nexttile(3, [1,2]);
stem([1 1 0 0], 'filled');
nexttile(5);
stem(my_conv, 'filled');
nexttile(6);
stem(inbuilt_conv, 'filled');


% ----- (b)
figure;
my_conv = self_conv([1 1 1 0 0 0], [0 5 2 2 5 1]);
inbuilt_conv = conv([1 1 1 0 0 0], [0 5 2 2 5 1]);
my_layout2 = tiledlayout(3,2);
nexttile(1, [1,2]);
stem([1 1 1 0 0 0], 'filled');
nexttile(3, [1,2]);
stem([0 5 2 2 5 1], 'filled');
nexttile(5);
stem(my_conv, 'filled');
nexttile(6);
stem(inbuilt_conv, 'filled');

% ----- (c)
figure
my_layout3 = tiledlayout(3,2);
xn = heaviside(n);
hn = exp(-n) .* heaviside(n);
my_conv = self_conv(xn, hn);
inbuilt_conv = conv(xn, hn);
nexttile(1, [1,2]);
stem(xn, 'filled');
nexttile(3, [1,2]);
stem(hn, 'filled');
nexttile(5);
stem(my_conv, 'filled');
nexttile(6);
stem(inbuilt_conv, 'filled');
clearvars;