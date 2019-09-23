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
tic
% imshow(im);
[a,b,c] = size(im) % a:cantidad de filas, b:cantidad de columnas
radio = 5;
im2 = im;   % se hace copia de la imagen original
% Barrido de filas y columnas de recuadros
for i = 1:a % radio+1:a-radio % barrido de filas
    f_ini = i-radio; f_fin = i+radio;
    if f_ini <= 0
        f_ini = 1;
    elseif f_fin > a
        f_fin = a;
    end
        
    for j = 1:b % radio+1:b-radio % barrido de columnas
        c_ini = j-radio; c_fin = j+radio;
        if j >=695 % para probar el depurador (paso a paso)
            t=20;
        end
        
        if c_ini <= 0
            c_ini = 1;
        elseif c_fin > b
            c_fin = b;
        end

        % m1 = im(i-radio:i+radio,j-radio:j+radio,:);
        
        m1 = im(f_ini:f_fin,c_ini:c_fin,:);
        
        [p_r,p_g,p_b] = promedios(m1);
        im2(i,j,1) = p_r; % asignar al rojo valor de promedio rojo
        im2(i,j,2) = p_g; % asignar al verde valor de promedio verde
        im2(i,j,3) = p_b; % asignar al azul valor de promedio azul
    end
end
toc
imshow(im2);

% Tarea
% 1. Construir mosaico de imagen n X m
% 2. Seleccionar un recuadro aleatorio con promedio de pixeles

