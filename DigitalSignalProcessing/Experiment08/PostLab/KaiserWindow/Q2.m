wp = 0.5;
ws = 0.6;
delp=0.1;
dels=0.1;
Fs=8000;
N1=-1*20*log10(dels)-7.95;
N2=14.36*(ws-wp)/2*pi;
N=N1/N2;
M=ceil(N);
wc=(wp+ws)/2;
b=fir1(M,wc,'high',kaiser(M+1));
figure(2)
freqz(b,1,512)
