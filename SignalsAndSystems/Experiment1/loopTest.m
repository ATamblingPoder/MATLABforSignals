function[] = loopTest(N)
for E = 1:N
    if (rem(E, 2) == 0) && (rem(E, 3) == 0)
        fprintf('%d is divisible by both 2 AND 3\n', E);
    elseif (rem(E, 2) == 0)
        fprintf('%d is divisible by 2\n', E)
    elseif (rem(E, 3) == 0)
        fprintf('%d is divisble by 3\n', E)
    else
        fprintf('%d is not divisible by either 2 or 3\n', E)
    end
end