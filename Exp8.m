clc;
clear all;
close all;
 
N=1024;
fs=2048;
ts=1/fs;
t=(0:N-1)/fs;
fc=600;
fm1=20;
Em1=1;
m=Em1*cos(2*pi*fm1*t);
mh=Em1*cos((2*pi*fm1*t)-pi/2);

sbu=m.*2.*cos(2*pi*fc*t)-mh.*2.*sin(2*pi*fc*t);
sbl=m.*2.*cos(2*pi*fc*t)+mh.*2.*sin(2*pi*fc*t);

SBU=2/N*abs(fft(sbu));
SBL=2/N*abs(fft(sbl));

freq=fs*(0:N/2)/N;

subplot(411)
plot(10*t,sbu,'r');
title("Upper Side Band");
grid on
subplot(412)
plot(10*t,sbl,'b');
title("Lower Side Band");
grid on
subplot(413);
plot(freq,SBU(1:N/2+1));
title("Forier Transform of Upper Side Band");
grid on
subplot(414);
plot(freq,SBL(1:N/2+1));
title("Forier Transform of Lower Side Band");
grid on
