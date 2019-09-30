clc;clear;
im = imread('casa.jpg');
% Tarea
% 1. Construir mosaico de imagen n X m
% 2. Seleccionar un recuadro aleatorio con promedio de pixeles
n = 2; % filas de recuadros
m = 3; % columnas de recuadros
[a,b,c] = size(im)

fila = floor(a/n)
columna = floor(b/m)
im2 = im(1:n*fila,1:m*columna,:);

m2 = randperm(n*m)
k = 1;
for i=1:n % barrido de recuadros filas
    f_ini = (i-1)*fila+1;
    f_fin = i*fila;
    
    for j=1:m % barrido de recuadros columnas
        c_ini = (j-1)*columna+1;
        c_fin = j*columna;
        tmp = im(f_ini:f_fin,c_ini:c_fin,:);
        % recalcular f,c_ini,fin
        [x,y]  = f_c(m2(k),n,m);    % obtener fila y col correspondiente al aleatorio
        f_ini2 = (x-1)*fila+1;
        f_fin2 = x*fila;
        c_ini2 = (y-1)*columna+1;
        c_fin2 = y*columna;
        im2(f_ini2:f_fin2,c_ini2:c_fin2,:) = tmp;
        %subplot(n,m,m2(k));
        %imshow(tmp);
        k = k+1;
    end
end
imwrite(im2,'casa2.jpg');
imshow(im2);
