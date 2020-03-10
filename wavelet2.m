fs = 1000;
t = 0:1/fs:4;
y = sin(32*pi*t).*(t<2) + sin(128*pi*t).*(t>=2);
subplot(2,1,1)
plot(t,y); 
axis tight
title('Analyzed Signal');
x=pwelch(y);
subplot(2,1,2)
plot(x)
title('power spectrum');
level =5 ;
wpt = wpdec(y,level,'sym6');%wavelet decomposition
figure(2);
[S,T,F] = wpspectrum(wpt,fs,'plot'); 
windowsize=256;
window = rectwin(windowsize);
nfft = windowsize;
noverlap = windowsize-1;
[S,F,T] = spectrogram(y,window,noverlap,nfft,fs);
figure(3);
imagesc(T,F,log10(abs(S)))
set(gca,'YDir','Normal')
xlabel('Time (secs)')
ylabel('Freq (Hz)')
title('Short-time Fourier Transform spectrum')
