clear all;
clc;
subplot(2,1,1)
t = 0:0.0005:7;
for i = 1:length(t)
    if(t(i) < 2)
        x(i) = 20 * exp(-2 * t(i));
    elseif((t(i) >= 2) && (t(i) < 3))
        x(i) = (10 * t(i)) - 30;
    elseif(t(i) >= 3 && t(i) < 5)
        x(i) = (-10 * t(i)) + 50;
    else
        x(i) = (10 * t(i)) - 70;
    end
end
plot(t,x)
xlabel('t(s)')
ylabel('v(t)')
title('V(t)')

subplot(2,1,2)
thederiv = gradient(t, x);
plot(t,thederiv)
xlabel('t(s)')
ylabel('dv(t)/dt')
title('Derivative of above function')