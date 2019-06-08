den = [1 2 1];

num = [1];
% num = [-1 1];
% % num = [1 1];
num = [0.8 1];
% num = [3 1];

% num = [1];
% den = [1 1 3];
% 
% num = [1];
% den = [1 0 1];
% 
% num = [1];
% den = [1 4 4];
% 
% num = [1];
% den = [1 2 4];
% 
% num = [1];
% den = [1 1 0.1];

sys = tf(num, den);
[priebeh, cas] = step(sys, 15);
nuly = complex(zero(sys))
poly = complex(pole(sys))

% prechodova
subplot(1,2,2); 
set(gcf, 'Units', 'Normalized', 'OuterPosition', [0, 0.04, 0.5, 0.45]);
% figure('Renderer', 'painters', 'Position', [10 10 900 600])
plot(cas, priebeh);
grid on;
xlabel('t[s]')


% komplexna rovina
subplot(1,2,1);
hold on; 
% data
plot(poly, 'rx')
plot(nuly, 'bx')

grid on; 
xlabel('Real')
ylabel('Imaginary')
% axes
xlim([-2 0.1])
ylim([-2 2])
xL = xlim;
yL = ylim;
line([0 0], yL, 'Color', 'k');  %y-axis
line(xL, [0 0], 'Color', 'k');  %x-axis
legend('póly', 'nuly')
% text 
% text(xL(1) +0.1, yL(1) + 1.3, strP1, 'Interpreter','latex')
% text(xL(1) +0.1, yL(1) + 1, strP2, 'Interpreter','latex')
% text(xL(1) +0.1, yL(1) + 0.5, strTF, 'Interpreter','latex')
