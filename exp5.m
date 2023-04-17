t = 0:0.001:1;                 
fc = 50;                        
fm = 5;                         
Am = 1;                        
Ac = 2;                         
mu=Am/Ac;                       
m = Am*sin(2*pi*fm*t);          
c = Ac*sin(2*pi*fc*t);         
s = (1 + mu.*m).*c;                 
 
hil = hilbert(s);
envelope = abs(hil);
figure;
subplot(3,1,1);
plot(t,m,"color","red");
title('Message Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;
 
subplot(3,1,2);
plot(t,c);
title('Carrier Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

subplot(3,1,3);
hold on;
plot(t,s);
plot(t,envelope);
hold off;
legend("Show","Signal","Envelope","Location","bestoutside");
title('AM Envelope');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;