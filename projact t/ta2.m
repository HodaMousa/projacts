clc
clear all
close all
f1=@spen;
Tf=5;
t=0:0.1:Tf;
x0=[pi/3 0];
[t,x]=ode45(f1,t,x0);
figure
subplot(2,1,1)
plot(t,x(:,1))
xlabel('Time (sec)'),ylabel('red')
title('\theta')
subplot(2,1,2)
plot(t,x(:,2))
xlabel('Time (sec)'),ylabel('red/sec')
title('\theta^{}')