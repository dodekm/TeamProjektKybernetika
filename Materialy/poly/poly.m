num = [1];
den = [1 1 1];

num = [1];
den = [1 1 3];

num = [1];
den = [1 0 1];

num = [1];
den = [1 4 4];

num = [1];
den = [1 2 4];

num = [1];
den = [1 1 0.1];

sys = tf(num, den);
[priebeh, cas] = step(sys, 30);
poly = complex(pole(sys))

% prechodova
subplot(1,2,2);
set(gcf, 'Units', 'Normalized', 'OuterPosition', [0, 0.04, 0.5, 0.45]);
% figure('Renderer', 'painters', 'Position', [10 10 900 600])
plot(cas, priebeh);
xlabel('t[s]')

% vytvor text poly
strP1 = sprintf('$$p_1 = %0.2f + %0.2fi $$', real(poly(1)), imag(poly(1)));
strP2 = sprintf('$$p_2 = %0.2f %0.2fi $$', real(poly(2)), imag(poly(2)));

% vytvor text tf
syms s 
n = sym(num);
d = sym(den);
ns = poly2sym(n,s);
ds = poly2sym(d,s);
tfsym = ns/ds;
tftitle = latex(tfsym)
strTF = sprintf('F(s) = $$ %s $$', tftitle);  %, 'Interpreter','latex')

% komplexna rovina
subplot(1,2,1);
% data
plot(poly, 'rx')
grid on; 
xlabel('Real')
ylabel('Imaginary')
% axes
xlim([-2 0.05])
ylim([-2 2])
xL = xlim;
yL = ylim;
line([0 0], yL, 'Color', 'k');  %y-axis
line(xL, [0 0], 'Color', 'k');  %x-axis
% text 
% text(xL(1) +0.1, yL(1) + 1.3, strP1, 'Interpreter','latex')
% text(xL(1) +0.1, yL(1) + 1, strP2, 'Interpreter','latex')
% text(xL(1) +0.1, yL(1) + 0.5, strTF, 'Interpreter','latex')
