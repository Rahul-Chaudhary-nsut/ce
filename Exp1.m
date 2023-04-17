x=0:0.01:10;
y1=sin(x);
y2=cos(x);
y3=sinc(x);

subplot(311);
plot(x,y1,"r")
title("Sine function");
ylabel("sin(x)")
xlabel("x");
ylim([-1.05,1.05]);
grid on

subplot(312);
plot(x,y2,"g")
title("Cosine function");
ylabel("cos(x)");
xlabel("x");
ylim([-1.05,1.05]);
grid on

subplot(313);
plot(x,y3,"b")
title("Sinc function");
ylabel("sinc(x)");
xlabel("x");
ylim([-1.05,1.05]);
grid on

