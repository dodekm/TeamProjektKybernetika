T = 5;
sys = tf(1,[T 1]);
[vystup, cas] = step(sys, 15);

figure(1);
plot(cas, vystup);
hold on;
grid on;
xlabel('t[s]')
legend('T=0.5', 'T=2', 'T=5')