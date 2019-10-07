clc;clear;
archivo = 'nota_la.mp3';
% archivo = 'Alarm01.wav';
% archivo = 'tonos.wav'; % 30 segundos
[y,Fs] = audioread(archivo);
Fs
% y(50e3:80e3,:)=0;
% plot(y)
[f,c] = size(y)
t_rep = f/Fs 
% sound(y,Fs);

% Taller:
% 1. Generar función senoidal amplitud 1 con frec de muestreo Fs 10e3
% con duración de 1 seg. Adicionar ruido con variación +-b=0.2

% 2. Realizar tratamiento para eliminar ruido

% Plantear procedimiento para reproducir en audio una imagen.

% Soluciones:

Fs = 10e3;
A = 1;
tiempo = 1;
frec = 220;
t = 0:1/Fs:tiempo;
y1 = A*sin(2*pi*frec*t);    % crear tono original
b = .2;
ruido = rand(1,length(t))*2*b-b; % crear ruido
% plot(t,ruido);
y2 = y1+ruido;      % Adicionar ruido al tono original
n = 10;
y3 = suavizar(y2,n); % llamar función de suavizar (filtrado)
% plot(t,[y2' y3']);  grid;   axis([0 .2, -1.5 1.5]);

% sound(y3,Fs);
size(t)
% Convertir el audio en matriz para mostrar como imagen
% (b-min(b))/(max(b)-min(b))
columnas = 455;
filas = floor(length(t)/columnas)
im_audio = zeros(filas,columnas);
minimo = min(y2)
maximo = max(y2)
k = 1;
for i = 1:filas
    for j = 1:columnas
        im_audio(i,j) = (y2(k)-minimo)/(maximo-minimo); % normalizado
        k = k+1;
    end
end
imshow(im_audio);
disp('Fin')

% Adelantar
% Realizar fft(audio)
% Aplicar fft y graficar, para y1, y2 y y3
