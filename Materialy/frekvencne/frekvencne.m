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
figure(1)
hold on;
nyquist( tf(1,[1 1]))
nyquist( tf(1,[1 2 1]))
nyquist( tf(1,[1 2 2 1]))
legend('1. rád', '2. rád', '3. rád' )

%% nyquist
sys = tf(1,[2 2 1]);
nyquist(sys)

%% nyquist dopravne 
sys = tf(1,[2 2 1], 'InputDelay', 1);
nyquist(sys)

%% nyquist vybrane 1 
s = tf('s');
sys = 1/s;
nyquist(sys)

%% nyquist vybrane 2
s = tf('s');
sys = 1/(2*s*(s+1));
nyquist(sys)