sys = tf(1,[2 2 1])

%% odozva systemu
freq = 10;
t = 15;
B_1 = 1
A_1 = [1 1]

sim('harmonic')

subplot(1,2,1);
plot(u);
grid on;
title('u(t)');
subplot(1,2,2);
plot(y);
grid on;
title('y(t)');

%% bode
bode(sys)

%% nyquist
nyquist(sys)
