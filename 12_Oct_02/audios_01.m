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