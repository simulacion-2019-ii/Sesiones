clc;clear;
dt = .01;
t = 0:dt:1;

vo = 0;     h = 0;  g = -9.8;
plot(0,h,'ro'); grid; axis([-2 2, -600 5]);
hold on;

for i = 1:length(t)
    vf = vo+g*t(i);
    h = vo*t(i)+.5*g*t(i)*t(i);
    plot(0,h,'ro');
    vo = vf;
    pause(.1);
end