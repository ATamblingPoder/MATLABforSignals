clc;
clearvars *;
t = -10:0.1:10;
u = t > 0;
un = zeros(1,length(t));
for i = 1:length(t)
    if(t(i) > -2 && t(i) < 0)
        un(i) = 1;
    end
end
x = t .* u;
xn = (-t) .* un;

subplot(4,1,1);
plot(t, x);
xlabel('t');
ylabel('x(t)');
title('x(t) = t * u(t)');

subplot(4,1,2);
plot(t, xn);
xlabel('t');
ylabel('x(-t)');
title('x(-t) = (-t) * u(-t)');

subplot(4,1,3);
xe = (x + xn) .* (0.5);
plot(t, xe);
xlabel('t');
ylabel('xe(t)');
title('Even Part of above signal');

subplot(4,1,4);
xo = (x - xn) .* (0.5);
plot(t, xo);
xlabel('t');
ylabel('xo(t)');
title('Odd Part of above signal');
sgtitle('InLab - Q5 - 22102109')