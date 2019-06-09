%%Time specifications:
Fs = 8000;                   % samples per second
dt = 1/Fs;                   % seconds per sample
StopTime = 0.25;             % seconds
t = (0:dt:StopTime-dt)';     % seconds
%%Sine wave:
Fc = 10;                     % hertz
x = sin(2*pi*Fc*t);
% Plot the signal versus time:
figure(2);
plot(t,x);
xlabel('t[s]');
% zoom xon;

%%Time specifications:
Fs = 8000;                   % samples per second
dt = 1/Fs;                   % seconds per sample
StopTime = 0.25;             % seconds
t = (0:dt:StopTime-dt)';     % seconds
%%Sine wave:
Fc = 10;                     % hertz
x = sin(2*pi*Fc*t+pi).*0.6;
% Plot the signal versus time:
figure(2);
hold on; grid on;
plot(t,x);
xlabel('t[s]');
% zoom xon;

legend('vstup', 'výstup')

%% 
p = 0.1251-0.025
d_t = 0.07512-0.025
fi = 2*pi*d_t/p

fi = 2*pi *0.1/d_t