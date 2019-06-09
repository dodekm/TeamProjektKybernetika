clear;
num = [1];
den = [1 1];
d = 0;

% num = [1];
% den = [1 1];
% d = 1;

% num = [1];
% den = [1 2 1];
% d = 0;

% num = [1];
% den = [1 1 1];
% d = 0;

% num = [1];
% den = [1 -0.5 1];
% d = 0;

num = [1 1];
den = [1 2 1];
d = 0;

sys = tf(num, den, 'InputDelay', d);
[y, t] = step(sys, 15);
poly = pole(sys)
nuly = zero(sys)

figure(1)
plot(t, y);
grid on;
xlabel('t[s]')

saveas(gcf,'1_1_.emf')