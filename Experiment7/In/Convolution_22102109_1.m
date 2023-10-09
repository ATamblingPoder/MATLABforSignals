clc;
clear;
n = -7:0.5:7;
f1 = (n == 0);
f2 = (abs(n) <= 0.5);
u1n = (n >= 0); u2n = (n >= 5);
f3 = u1n - u2n;
t = tiledlayout(3,4);
nexttile(1, [1, 2]);
stem(n, f1);
xlabel('n');
ylabel('\delta[n]');
title('Unit Impulse')
nexttile(5, [1, 2]);
stem(n, f2);
xlabel('n');
ylabel('{\it rect}[n]')
title('Rectangular Function');
nexttile(9, [1, 2]);
stem(n, f3);
xlabel('n');
ylabel('u[n] - u[n -5]');
title('Shifted Rectangular Function');

nexttile(3);
stem(conv(f1, f2));
xlabel('n');
ylabel('f_1[n] * f_2[n]');
title('LHS - Commutativity');
nexttile(4);
stem(conv(f2, f1));
xlabel('n');
ylabel('f_2[n] * f_1[n]');
title('RHS - Commutativity')

nexttile(7);
stem(conv(f1, f2 + f3));
xlabel('n');
ylabel('f_1[n] * (f_2[n] + f_3[n])');
title('LHS - Distributivity');
nexttile(8);
stem(conv(f1, f2) + conv(f1, f3));
xlabel('n');
ylabel('f_1[n] * f_2[n] + f_1[n] * f_3[n])');
title('LHS - Distributivity');


nexttile(11);
stem(conv(f1, conv(f2, f3)));
xlabel('n');
ylabel('f_1[n] * (f_2[n] * f_3[n])');
title('LHS - Associativity');
nexttile(12);
stem(conv(conv(f1, f2), f3));
xlabel('n');
ylabel('(f_1[n] * f_2[n]) * f_3[n]');
title('RHS - Associativity');
