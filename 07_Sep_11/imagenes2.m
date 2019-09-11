clc;clear;
% im = imread('carro01.jpg');
im = imread('imag2.jpg');
% b_n = im2bw(im,.5);
% gris= rgb2gray(im);
% subplot(3,2,1); % subplot(3,1,1);
% imshow(im);         title('Color');
% subplot(3,2,3); %subplot(3,1,2);
% imshow(b_n);        title('Blanco y negro');
% subplot(3,2,5); %subplot(3,1,3);
% imshow(gris);       title('Grises');
% 
% recorte = im(10:70,20:100,:);
% subplot(1,2,2);
% imshow(recorte);       title('Recorte');

gris = rgb2gray(im);
im2 = imresize(gris,[290,280]);
im_1 = diff(im2); % im3 = diff(im2);
im_2 = diff(im2')';
size(im_1)
size(im_2)
subplot(1,3,1); imshow(im);
subplot(1,3,2); imshow(im_1);
subplot(1,3,3); imshow(im_2);

total = im_1(:,1:end-1)+im_2(1:end-1,:);
size(total)
total_2 = 255-total; % aplicar negativo a la imagen
figure
imshow(total_2)
% Tarea:
% 1. Generar y graficar promedio (mean) de valores de pixeles por bloques
% (avanzando de bloque en bloque)
% 2. Generar y graficar promedio de valores de pixeles
% (avanzando de pixel por pixel)
% según los parámetros dados por filas = 20 y
% columnas = 20 (variable)
