clc;
clear all;
close all;
fs=1000;
ts=1/fs;
t=0:ts:10;

Am=3;
Ac=5;
fm=1;
fc=10;
ka=1/Ac;
mu=ka*Am;
Tm=1/fm;
mt=Am.*cos(2*pi*fm*t);
ct=Ac.*cos(2*pi*fc*t);
st=ct.*(1+ka.*mt);

subplot(3,1,1)
plot(t,mt,"r")
xlabel("Time(s)")
ylabel("Amplitude(volt)")
title("Message signal")
grid on;

subplot(3,1,2)
plot(t,ct,"g")
xlabel("Time(s)")
ylabel("Amplitude(volt)")
title("Carrier signal")
grid on

subplot(3,1,3)
plot(t,st,"b")
xlabel("Time(s)")
ylabel("Amplitude(volt)")
title("Amplitude modulated signal")
grid on