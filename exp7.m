clc;
close all;
clear all;

fs=1000;
ts=1/fs;
t=(0:ts:10);

am=2;
ac=5;
fm=1;
fc=10;
mt=am.*cos(2*pi*fm*t);
ct=ac.*cos(2*pi*fc*t);
st=mt.*ct;
wt=st.*ct;

Wp=400;
jk="low";
[kj,mn]=butter(1,.003,jk);
yz=filtfilt(kj,mn,wt);

subplot(411);
plot(t,mt);
title("Message signal");
xlabel("Time(s)");
ylabel("Amplitude(volt)")
grid on;

subplot(412);
plot(t,ct,"g");
title("Carrier signal");
xlabel("Time(s)");
ylabel("Amplitude(volt)")
grid on;

subplot(413);
plot(t,st,"r");
title("DSB-SC modulated signal");
xlabel("Time(s)");
ylabel("Amplitude(volt)")
grid on;

subplot(414);
plot(t,yz,"c");
title("Demodulated signal");
xlabel("Time(s)");
ylabel("Amplitude(volt)")
grid on;
