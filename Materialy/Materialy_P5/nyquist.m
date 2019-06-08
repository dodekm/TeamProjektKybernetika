clear;
figure(1);
hold on;

K = 4;
g1 = tf(K,[1 3 3 1])

K = 8;
g2 = tf(K,[1 3 3 1])

K = 12;
g3 = tf(K,[1 3 3 1])
bode(g1, g2, g3)


