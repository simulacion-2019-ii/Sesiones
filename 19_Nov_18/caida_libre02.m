clc;clear;
dt = .1;
t = 0:dt:40;
piso = -200;
vo = 50;     ho = 0;  g = -9.8;
plot(0,ho,'ro'); grid; axis([-.2 50, -600 250]);
hold on;

% y = yo+vot+1/2*a*t^2
% v = vo+a*t

for i = 1:length(t)
    hf = ho+vo*dt+1/2*g*dt^2
    vf = vo+g*dt
    
    if hf < piso
        vf = abs(vf);
        hf = ho+vo*dt+1/2*g*dt^2;
    end
    
    plot(t(i),hf,'ro');
    vo = vf;
    ho = hf;
    pause(.01);
end

% Movimiento parabólco
% x = x0+vx*t
% vy = v0y+ay*t
% y = y0+v0y*t+1/2*ay*t^2
