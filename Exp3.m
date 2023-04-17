clc
clear all
close all
t=-10:0.001:10;
xct=(t>=-1)-(t>=1);

subplot(121);
plot(t,xct,"r");
title("Square pulse");
xlabel("t");
ylabel("x(t)");
grid on

w=-4*pi:0.01:4*pi;
for i=1:length(w)
    xcw(i)=trapz(t,xct.*exp(-1i.*w(i).*t));
end

subplot(122);
plot(w,abs(xcw),"b");
title("Absolute value of fourier transform")
xlabel("f");
ylabel("|X(f)|");
grid on;
