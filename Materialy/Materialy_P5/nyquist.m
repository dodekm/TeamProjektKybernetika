clear;
figure(1);
hold on;

K = 4;
g = tf(K,[1 3 3 1])
nyquist(g)

K = 8;
g = tf(K,[1 3 3 1])
nyquist(g)

K = 12;
g = tf(K,[1 3 3 1])
nyquist(g)


