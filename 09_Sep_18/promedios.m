function [p_r,p_g,p_b] = promedios(m1)
% Calcular el valor de promedio por cada componente de color

p_r = floor(mean2(m1(:,:,1)));
p_g = floor(mean2(m1(:,:,2)));
p_b = floor(mean2(m1(:,:,3)));
end

