clc;
clear all;
n = -5:1:5;
y = zeros(length(n));
for i = 1:length(n)
    if(n(i) > 0)
        y(i) = 1;
    end
end
stem(n,y);
title('Unit Step Function - 22102109');
xlabel('n');
ylabel('step(n)');
