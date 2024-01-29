clc;
clearvars;
clf;

n = -10:0.5:10;

f1 = (n == 0);
f2 = (abs(n) <= 0.5);
f3 = heaviside(n) - heaviside(n - 5);

my_layout = tiledlayout(3, 2);
title(my_layout, "Q2 -- InLab -- 22102109")

f12 = conv(f1, f2);
f21 = conv(f2, f1);
nexttile(1);
stem(f12);
title("LHS - Commutative");
nexttile(2);
stem(f21);
title("RHS - Commutative");

f12p3 = conv(f1, f2 + f3);
f12p13 = conv(f1, f2) + conv(f1, f3);
nexttile(3);
stem(f12p3);
title("LHS - Distributive");

nexttile(4);
stem(f12p13);
title("LHS - Distributive");

f1c23 = conv(f1, conv(f2, f3));
f12c3 = conv(conv(f1, f2), f3);
nexttile(5);
stem(f1c23);
title("LHS - Associative");

nexttile(6);
stem(f12c3);
title("LHS - Associative");