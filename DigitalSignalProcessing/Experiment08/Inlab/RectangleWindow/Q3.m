wp1 = 0.3;
wp2 = 0.6;
ws1 = 0.2;
ws2 = 0.7;
dels = 0.1;
Fs = 8000;
N1 = -20*log10(dels) - 7.95;
N2 = 14.36 * (ws2 - ws1) * Fs / (2*pi);
N = N1 / N2;
M = ceil(N);
disp(M)
wc1 = (wp1 + ws1) / 2;
wc2 = (wp2 + ws2) / 2;
disp(wc1)
disp(wc2)
b = fir1(M, [wc1, wc2], 'bandpass', rectwin(M+1));
figure(3);
freqz(b, 1, 512);
