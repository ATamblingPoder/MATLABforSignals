function[X] = my2fft(x, N)
% MY2FFT Discrete Fourier Transform (Using Radix-2 DIT)
%   MY2FFT(X) is the discrete Fourier Transform of vector X. X is padded
%   with zeros if it is of insufficient length.
%   
%   MY2FFT(X,N) is the N-point DFT of vector X. Only the first N elements
%   are considered.
%
%   See also FFT, IFFT
    L = length(x);
    if nargin ~= 2
        N = L;
    else
        pow_o2 = 2^(ceil(log2(N)));
        if pow_o2 ~= N
            error("N is not a power of 2");
        end
        if N > L
            x = [x zeros(1, N - L)];
        else
            x = x(1:N);
        end
    end
    X = zeros(1, N);
    if N == 2
        X(1) = x(1) + x(2);
        X(2) = x(1) - x(2);
    else
        k_e = 2 * (0.5:1:(N/2));
        gn = x(k_e);
        hn = x(k_e + 1);
        Gk = my2fft(gn, N/2);
        Hk = my2fft(hn, N/2);
        for k = 1:1:(N/2)
            W = exp(-2 * 1i * pi * (k - 1) * (1/N));
            X(k) = Gk(k) + (W * Hk(k));
            X(k + N/2) = Gk(k) - (W * Hk(k));
        end
    end
end