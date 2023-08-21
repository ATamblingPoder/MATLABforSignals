clear all;
clc;
t = -5:0.05:5;
for i = 1:length(t)
    if(t(i) == -1)
        xa(i) = 1
    else
        xa(i) = 0
    end
end
subplot(6,1,1)
plot(t,xa)
xlabel('t')
ylabel('xa(t)')
title('delta(t + 1)')

subplot(6,1,2)
for i = 1:length(t)
    if(t(i) == -1/2)
        xb1(i) = 1
        xb2(i) = 0
    elseif(t(i) == 1/2)
        xb2(i) = 1
        xb1(i) = 0
    else
        xb1(i) = 0
        xb2(i) = 0
    end
end
xb = xb1 - xb2
plot(t, xb)
xlabel('t')
ylabel('xb(t)')
title('delta(t + 1/2) - delta(t + 1/2)')

subplot(6,1,3)
for i = 1:length(t)
    if(t(i) < 0)
        step(i) = 0
    else
        step(i) = 1
    end
end
xc = t .* step;
plot(t,xc)
xlabel('t')
ylabel('xc(t)')
title('t * step(t)')

subplot(6,1,4)
for i = 1:length(t)
    if(t(i) < -2)
        step1(i) = 0
    else
        step1(i) = 1
    end
    if(t(i) < 3)
        step2(i) = 0
    else
        step2(i) = 1
    end
end
xd = step1 - step2
plot(t,xd)
xlabel('t')
ylabel('x(t)')
title('step(t + 2) - step(t - 3)')

subplot(6,1,5)
for i = 1:length(t)
    if(t(i) < -1)
        ramp1(i) = 0;
    else
        ramp1(i) = t(i) + 1;
    end
    if(t(i) < 0)
        ramp2(i) = 0;
    else
        ramp2(i) = t(i);
    end
    if(t(i) >= 2)
        ramp3(i) = t(i) - 2;
    else
        ramp3(i) = 0;
    end
end
xe = ramp1 - ramp2 + ramp3;
plot(t,xe)
xlabel('t')
ylabel('x(t)')
title('ramp(t + 1) - ramp(t) + ramp(t - 2)')

subplot(6,1,6)
xf = (exp(-t) .* sin(2 * pi * t)) + (exp(-t / 2) .* cos(5 * pi *t));
plot(t,xf)
xlabel('t')
ylabel('x(t)')
title('exp(-t)sin(2*pi*t) + exp(-t / 2) cos(5*pi*t)')
