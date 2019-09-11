clc;clear;
im = imread('carro01.jpg');

b_n = im2bw(im,.5);
gris= rgb2gray(im);
subplot(3,2,1); % subplot(3,1,1);
imshow(im);         title('Color');
subplot(3,2,3); %subplot(3,1,2);
imshow(b_n);        title('Blanco y negro');
subplot(3,2,5); %subplot(3,1,3);
imshow(gris);       title('Grises');

recorte = im(10:70,20:100,:);
subplot(1,2,2);
imshow(recorte);       title('Recorte');
