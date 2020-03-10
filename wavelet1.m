fs = 4410; % sampling rate
t = 0:1/fs:2; % 2 secs at 1kHz sample rate
y = chirp(t,100,1,200,'quadratic');
plot(t,y)
level=5;

wpt = wpdec(y,level,'sym8');

[S,T,F] = wpspectrum(wpt,fs,'plot');
figure(2);
windowsize =256;
window = hann(windowsize);
nfft = windowsize;
noverlap = windowsize-1;
[S,F,T] = spectrogram(y,window,noverlap,nfft,fs);
imagesc(T,F,log10(abs(S)))
set(gca,'YDir','Normal')
xlabel('Time (secs)')
ylabel('Freq (Hz)')
title('Short-time Fourier Transform spectrum')