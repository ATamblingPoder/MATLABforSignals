t=0:100;
f1=100;
f2=500;
fs=1000;
fc=150;
N=18;
x1=sin(2*pi*(f1/fs)*t);
figure(1)
subplot(2,2,1); plot(t,x1);
xlabel('Time index [n]')
ylabel('Amplitude x1[n]')
title('Input signal 1')
x2=sin(2*pi*(f2/fs)*t);
subplot(2,2,2); plot(t,x2);
xlabel('Time index [n]')
ylabel('Amplitude x2[n]')
title('Input signal 2')
x=x1+x2;
subplot(2,2,3); plot(t,x);
xlabel('Time index [n]')
ylabel('Amplitude x[n]')
title('Composite signal')
mag=abs(fft(x,1024));
k=0:512;
f=k*fs/1024;
subplot(2,2,4); plot(f,mag(1:513));
xlabel('Frequency [f]')
ylabel('Magnitude X[f]')
title('FFT of Composite Signal')
if rem(N,2) == 0
 a=N/2;
else
 a = (N-1)/2;
end
for n=0:N-1
 if n~=a
 hd(n+1)=sin(2*pi*(fc/fs)*(n-a))/(pi*(n-a));
 end
 hd(a+1)=2*fc/fs;
end
figure(2)
n=0:N-1;
w=rectwin(N);
h=hd.*w';
subplot(2,2,1); plot(n,h);
xlabel('Time axis [n]')
ylabel('Magnitude h[n]')

title('Filter impulse reponse')
H=abs(fft(h,1024));
subplot(2,2,2); plot(f,H(1:513));
xlabel('Frequency [f]')
ylabel('Magnitude H[f]')
title('Filter frequency response')
y=filter(h,1,x);
subplot(2,2,3); plot(y);
xlabel('Time index [n]')
ylabel('Amplitude y[n]')
title('LPF Filtered signal')
Y=abs(fft(y,1024));
subplot(2,2,4)
plot(f,Y(1:513));
xlabel('Frequency [f]')
ylabel('Magnitude Y[f]')
title('FFT of a filtered signal using rectangular window')
