
fs=1000;% sampling frequency
n=100;
%x=sin(2*pi*50*t) + 2*cos(2*pi*n*t)+ 3*tan(2*pi*120*t)+sec(2*pi*60*t) ;
x=VarName3';
t= 0:1/fs:(length(x)/fs)-1/fs;%step size
f=linspace(-fs/2,fs/2,length(x));

figure(1)
plot(x);
nfft=length(x);%length of time domain signal
%nfft2=2^nextpow2(nfft);
ff=fft(x);
pwr=ff.^2;
figure(2)
plot(f,abs(ff))



