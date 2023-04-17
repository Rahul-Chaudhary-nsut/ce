x=-10:0.01:10;
y1=(x>=0);
y2=(x>=5);
y3=x.*(x>=0);
y4=(x-5).*(x>=5);

subplot(411);
plot(x,y1,"r");
title("Unit step function");
axis([-10 10 0 2]);
xlabel("x");
ylabel("u(x)");
grid on

subplot(412);
plot(x,y2,"black");
title("Shifted Unit step function");
axis([-10 10 0 2]);
xlabel("x");
ylabel("u(x - 5)");
grid on

subplot(413);
plot(x,y3,"g");
title("Ramp function");
axis([-10 10 0 2]);
xlabel("x");
ylabel("r(x)");
grid on

subplot(414);
plot(x,y4,"b");
title("Shifted ramp function");
axis([-10 10 0 2]);
xlabel("x");
ylabel("r(x-5)");
grid on