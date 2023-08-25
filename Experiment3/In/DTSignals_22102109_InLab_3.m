clc;
clear all;
n = -2:1:10;
y = zeros(length(n));
for i = 1:length(n)
    if(n(i) < 0)
        y(i) = 0;
    else
        y(i) = n(i);
    end
end
stem(n,y);
title('Ramp Function');
xlabel('n');
ylabel('r(n)');