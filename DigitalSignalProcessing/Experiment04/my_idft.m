function[idft_out] = my_idft(X)
    L = length(X);
    k = 0:1:(L-1);
    Wn = exp(-2i .* pi .* (1/L) .* k .* transpose(k));
    Wnh = conj(Wn);
    idft_out = transpose(Wnh * transpose(X)) ./ L;
    dr = real(idft_out);
    di = imag(idft_out);
    di(abs(di) < 0.0001) = 0;
    idft_out = dr + 1i.*di;
end