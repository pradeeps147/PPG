fs=1000;%sampling frequency
t=0:1/fs:7.559-1/fs;
x=VarName3';
l=length(x);
figure(1)
plot(t,x);
xlabel('time')
ylabel('magnitude(mv)');
y= fft(x);
F=(0:length(y)-1)*fs/length(y);
n = length(x);                         
fshift = (-n/2:n/2-1)*(fs/n);
yshift = fftshift(y);
plot(fshift,abs(yshift))




% n=2^nextpow2(l);
% 
% y=fft(x,n);
% ff=y(1:n/2);
% figure(2)
% plot(abs(ff));

xlabel('frequency')
ylabel('magnitude(mv)')
filt=filter(lpfh,abs(yshift));
figure(3);
plot(filt)
time=ifft(filt);
figure;
plot(abs(time))
window=hann(windowsize);
windowsize=256;
nfft=256;
noverlap=250;
[S,F,T] = spectrogram(x,window,noverlap,nfft,fs);
figure;


