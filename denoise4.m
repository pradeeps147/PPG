fs = 1000;
t = 0:1/fs:7.559-1/fs;
x=VarName3';

figure;
plot(t,x); 
xlabel('time(sec)');
ylabel('magnitude(mv)');
axis tight
title('Analyzed Signal');
figure;
plot(diff(x));
figure;
plot(filter(lpfh,diff(x)))

figure;
plot(abs(fft(diff(x))))
% pwelch(x,'power');figure(gcf)
xfilter=filter(lpfh,abs(fft(diff(x))));
figure;
plot(xfilter);
timed=ifft(xfilter);
figure;
plot(abs(timed))




