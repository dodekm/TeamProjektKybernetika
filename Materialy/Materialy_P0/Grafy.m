clc
clear all
x = -2:0.1:2;
y = x.^2 - 1;
plot(x,y)

grid on
xlabel("os X")
ylabel("os Y")
title("y=f(x)")


y2 = x.^3;
hold on
plot(x,y2, '-r')
legend("y=x^2 - 1", "y=x^3")