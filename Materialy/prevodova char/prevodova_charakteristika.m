close all;
clear;
fcn = tf([1], [2 2 1]);

figure(1);
hold on; grid on;

finishs = [];
for i=1:7
    [priebeh, cas] = step(fcn, 100);
    priebeh = priebeh *i;
    plot(cas, priebeh, 'Color', [0 0.4470 0.7410])
    finish = priebeh(length(priebeh));
    finishs = [finishs finish];
    plot(cas(end), finish, 'rx');
    str = sprintf('step = %d',i);
    text(cas(end)-15, finish-0.2, str)
end
title('Prechodové charakteristiky')
xlabel('t[s]')
ylabel('y[ ]')


figure(2)
hold on; grid on;
plot(finishs, 'Color', [0 0.4470 0.7410])
plot(finishs, 'x', 'Color', 'r')

title('Prevodová charakteristika')
xlabel('u - vstup')
ylabel('y - výstup')