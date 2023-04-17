clc;
close all;
clear all;
 
fs = 1000;
ts = 1 / fs;
t = 0:ts:10;
am = 3;
fm = 1;
ac = 5;
fc = 10;
kf= 2;

mt = am*cos(2*pi*fm*t);
je=am/(2*pi*fm).*sin(2*pi*fm*t); 
ct = ac*cos(2*pi*fc*t); 
st= ac*cos(2*pi*fc*t+2*pi*kf*je); 
uv=-ac*2*pi*(fc+kf*mt).*sin(2*pi*fc*t+2*pi*kf*je);
wx=ac*2*pi*(fc+kf*mt);

jk="bandpass";
[kj,mn]=butter(1,[.001,.003],jk);
yz=filtfilt(kj,mn,wx);
 
subplot (511);
plot (t,mt);
title ('Message signal'); 
xlabel('Time(sec)');
ylabel('ambitude (volt)');
grid on;
 
subplot(512); 
plot(t, ct,'g');
title('Carrier');
xlabel('Time (sec)');
ylabel('Amplitude(volt)');
grid on;
 
subplot(513);
plot (t, st,'r'); 
title('FM Signal');
xlabel('Time (sec)');
ylabel('Amplitude(volt)');
grid on;

subplot(514);
plot (t, uv,'c'); 
title('Differentiated FM Signal');
xlabel('Time (sec)');
ylabel('Amplitude(volt)');
grid on;

subplot(515);
plot (t,yz,'m'); 
title('Demodulated Signal');
xlabel('Time (sec)');
ylabel('Amplitude(volt)');
grid on;