clc;clear;
% archivo = 'nota_la.mp3';
% archivo = 'Alarm01.wav';
archivo = 'tonos.wav'; % 30 segundos
[y,Fs] = audioread(archivo);
Fs
y(50e3:80e3,:)=0;
plot(y)
[f,c] = size(y)
t_rep = f/Fs 
sound(y,Fs);

% Taller:
% 1. Generar función senoidal amplitud 1 con frec de muestreo Fs 10e3
% con duración de 1 seg. Adicionar ruido con variación +-b=0.2

% 2. Realizar tratamiento para eliminar ruido

% Plantear procedimiento para reproducir en audio una imagen.