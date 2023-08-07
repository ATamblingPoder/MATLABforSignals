% --- Problem 5
% --- (a)
t = linspace(0, pi * 2);
theSplot = plot(t, sin(t))

% --- (b)
hold on

% --- (c)
theCplot = plot(t, cos(t), "--red")

% --- (d)
legend([theCplot, theSplot], "cos(t)", "sin(t)")

% --- (e)
xlim([0, pi * 2])
ylim([-1.4, 1.4])