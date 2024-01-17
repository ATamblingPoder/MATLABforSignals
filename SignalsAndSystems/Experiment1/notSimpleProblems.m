% --- Problem 6
[x, y] = getCircle(1, 1);
plot(x, y)
xlim([-2,2]);
ylim([-2,2]);

% --- Problem 7
loopTest(25)

% --- Problem 8
A = [3 6 4; 1 5 0; 0 7 7];
B = [1; 2; 3];
X = linsolve(A, B)

% --- Problem 9
xX = 0:0.01:5;
yY = xX .* (exp(- xX / 3));
answer = trapz(xX, yY);
realanswer = -24 * exp(-5 /3) + 9;
fprintf('The integral equals approx %f\n', answer)
fprintf('The difference is %f\n', realanswer - answer)

% --- Problem 10
theCell = {'Joe', 'Sarah', 'Pat';
    'Smith', 'Brown', 'Jackson';
    30000, 150000, 120000};
disp(theCell)
