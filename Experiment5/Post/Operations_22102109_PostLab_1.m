clc;
clearvars;
t = -1:0.1:7;
final_sig = zeros(1, length(t));

for i = 1:length(t)
    if(t(i) <= 1)
        final_sig(i) = 2 * t(i);
    elseif(t(i) > 1 && t(i) <= 2)
        final_sig(i) = 2;
    elseif(t(i) > 2 && t(i) <= 4)
        final_sig(i) = 5 - t(i);
    elseif(t(i) > 4 && t(i) <= 5)
        final_sig(i) = 1;
    else
        final_sig(i) = 6 - t(i);
    end
end

plot(t, final_sig);
xlabel('t');
ylabel('V(t)');
xlim([-1, 7]);
ylim([-2, 3]);
sgtitle("Q1 - PostLab - 22102109");