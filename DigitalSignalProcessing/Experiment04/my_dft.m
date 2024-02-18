function[dft_out] = my_dft(x, N)
    L = length(x);
    if nargin < 2
        N = 2 ^ ceil(log2(L));
    end
    if L > N
        error("L is greater than N");
    end
    k = 0:1:(N-1);
    Wn = exp(-2i .* pi .* (1/N) .* k .* transpose(k));
    x_pad = transpose([x zeros(1, N-L)]);
    dft_out = transpose(Wn * x_pad);
    dr = real(dft_out);
    di = imag(dft_out);
    di(abs(di) < 0.0001) = 0;
    dft_out = dr + 1i.*di;
end