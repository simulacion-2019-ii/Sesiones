function [x,y] = poligono(lados)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
da= 2*pi/lados;
angulos = 0:da:2*pi
x = cos(angulos);  y = sin(angulos);
end

