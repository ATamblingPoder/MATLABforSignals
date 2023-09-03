clc;
clearvars *;
t = -6:0.1:6;
y = zeros(1, length(t));
for i = 1:length(t)
    if(t(i) >= -6 && t(i) <= -5)
        y(i) = 0;
    elseif(t(i) > -5 && t(i) <= -2)
        y(i) = t(i) + 5;
    elseif(t(i) > -2 && t(i) <= 1)
        y(i) = 11 + (4 * t(i));
    elseif(t(i) > 1 && t(i) <= 3)
        y(i) = 24 - (9 * t(i));
    else
        y(i) = t(i) - 6;
    end
end
subplot(4,1,1);
plot(t, y);
xlabel('t');
ylabel('Y(t)');
title('Given Function')

yneg = flip(y);
subplot(4,1,2);
plot(t, yneg);
xlabel('t');
ylabel('Y(-t)');
title('Flipped');

evener = (y + yneg) / 2;
subplot(4,1,3);
plot(t, evener);
xlabel('t');
ylabel('Y_e(t)');
title('Even Part of above function');


odder = (y - yneg) / 2;
subplot(4,1,4);
plot(t, odder);
xlabel('t');
ylabel('Y_o(t)');
title('Odd Part of  above function');

sgtitle('InLab - Q6 - 22102109')