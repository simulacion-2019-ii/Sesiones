function [m,b] = ec_recta(x,y) % x,y --> [x0,x1],[y0,y1]
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
x0 = x(1);  x1=x(2);
y0 = y(1);  y1=y(2);
dy = y1-y0;
dx = x1-x0;
m = dy/dx;
b = y0-m*x0;
end

