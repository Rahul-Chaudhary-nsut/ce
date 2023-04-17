clc;
close all;

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
 
subplot (311);
plot (t,mt);
title ('Message signal'); 
xlabel('Time(sec)');
ylabel('ambitude (volt)');
grid on;
 
subplot(312); 
plot(t, ct,'g');
title('Carrier');
xlabel('Time (sec)');
ylabel('Amplitude(volt)');
grid on;
 
subplot(313);
plot (t, st,'r'); 
title('FM Signal');
xlabel('Time (sec)');
ylabel('Amplitude(volt)');
grid on;