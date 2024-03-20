wp = 0.5;
ws = 0.6;
delp=0.1;
dels=0.1;
Fs=8000;
N1=-1*20*log10(dels)-7.95;
N2=14.36*(ws-wp)/2*pi;
N=N1/N2;
M=int8(N);
disp(M)
wc=(wp+ws)/2;
disp(wc)
b=fir1(M,wc,'low',rectwin(M+1));
figure(1)
freqz(b,1,512)
