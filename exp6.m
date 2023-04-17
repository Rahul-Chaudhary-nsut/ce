clc;
close all;
clear all;

fs=1000;
ts=1/fs;
t=(0:ts:5);

am=2;
ac=2;
fm=1;
fc=10;
mt=am.*cos(2*pi*fm*t);
ct=ac.*cos(2*pi*fc*t);
st=mt.*ct;

subplot(311);
plot(t,mt);
title("Message signal");
xlabel("Time(s)");
ylabel("Amplitude(volt)")
grid on;

subplot(312);
plot(t,ct,"g");
title("Carrier signal");
xlabel("Time(s)");
ylabel("Amplitude(volt)")
grid on;

subplot(313);
plot(t,st,"r");
title("DSB-SC modulated signal");
xlabel("Time(s)");
ylabel("Amplitude(volt)")
grid on;