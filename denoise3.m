fs=1000;
t=0:1/fs:7.559-1/fs;
x=VarName3';
figure;

plot(t,x)
%for k=10:length(x);
   % if (x(k) > x(k-1) & x(k) > x(k+1) & x(k) > 1);
       % k
       % disp('prominent peak');
    %end
%end    
n=length(x);
%sin_wave=sin(2*pi*10*t);
%s=20/(2*pi*10);
%%%figure;
ff=fft(x,n);
ff1=ff(1:n/2);
figure;
plot(abs(ff1))
%filtered=firnotch(b,a,fs);
filtered=filter(lpfh,abs(ff1));
figure;
plot(filtered);
timed=ifft(filtered);
figure;
plot(abs(timed))
