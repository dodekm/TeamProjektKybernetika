%% 
x = 0:1:6*pi;
y = sin(x);
plot(x,y)
%% 

title('Sine Wave')
xlabel('x')
ylabel('sin(x)')
fig = gcf;
fig.MenuBar = 'none';