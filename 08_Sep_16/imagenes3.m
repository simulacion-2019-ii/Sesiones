clc;clear;
% im = imread('carro01.jpg');
im = imread('casa.jpg');
% Tarea:
% 1. Generar y graficar promedio (mean) de valores de pixeles por bloques
% (avanzando de bloque en bloque)
% 2. Generar y graficar promedio de valores de pixeles
% (avanzando de pixel por pixel)
% según los parámetros dados por filas = 20 y
% columnas = 20 (variable)

% imshow(im);
[a,b,c] = size(im)
fila = 200;
columna = 200;
im2 = im;
% Barrido de filas y columnas de recuadros
for i = 1:floor(a/fila)
    for j = 1:floor(b/columna)
        num2str([i,j]);
        % limite de cada recuadro
        c_ini = (j-1)*columna+1;
        c_fin = j*columna;
        f_ini = (i-1)*fila+1;
        f_fin = i*fila;
        num2str([f_ini,f_fin,c_ini,c_fin]);
        
        m1 = im(f_ini:f_fin,c_ini:c_fin,:);   % capturar el primer recuadro
        [p_r,p_g,p_b] = promedios(m1); % capturar el promedio de cada color por recuadro
        im2(f_ini:f_fin,c_ini:c_fin,1) = p_r; % asignar al rojo valor de promedio rojo
        im2(f_ini:f_fin,c_ini:c_fin,2) = p_g; % asignar al verde valor de promedio verde
        im2(f_ini:f_fin,c_ini:c_fin,3) = p_b; % asignar al azul valor de promedio azul
    end
end

% m1 = im(1:fila,1:columna,:);   % capturar el primer recuadro
% [p_r,p_g,p_b] = promedios(m1); % capturar el promedio de cada color por recuadro
% im2 = im;
% im2(1:fila,1:columna,1) = p_r; % asignar al rojo valor de promedio rojo
% im2(1:fila,1:columna,2) = p_g; % asignar al verde valor de promedio verde
% im2(1:fila,1:columna,3) = p_b; % asignar al azul valor de promedio azul
% figure
imshow(im2);
size(im2)