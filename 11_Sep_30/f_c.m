function [x,y]  = f_c(num,n,m)
% Calcular los índices i,j de un No. dado en fila [1,n]
% x ->> fila   y ->> columna
x = floor((num-1)/m)+1;
y = mod(num-1,m)+1;

end

