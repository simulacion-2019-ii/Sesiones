clc;clear;
dt = .01;
t = 0:dt:1.5;
piso = -200;
vo = 250;     h = 0;  g = -9.8;
plot(0,h,'ro'); grid; axis([-.2 5, -600 250]);
hold on;

for i = 1:length(t)
    vf = vo+g*t(i);
    h = vo*t(i)+.5*g*t(i)*t(i);
    if h < piso
        vo = abs(vf);
        %h = vo*t(i)+.5*g*t(i)*t(i);
        continue
    end
    plot(t(i),h,'ro');
    %text(t(i),h,'o');
    vo = vf;
    pause(.1);
end