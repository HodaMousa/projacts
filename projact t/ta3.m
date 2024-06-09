clc
clear all
close all
m=0.1;
l=0.5;
g=9.8;
b=0.1;
Tf=15;
sim('spsim')
figure
subplot(2,1,1)
plot(t_sim,theta_sim)
xlabel('Time (sec)'),ylabel('red')
title('\theta')
subplot(2,1,2)
plot(t_sim,dtheta_sim)
xlabel('Time (sec)'),ylabel('red/sec')
title('\theta^{}')