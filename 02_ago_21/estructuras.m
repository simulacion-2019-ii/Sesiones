% Estructuras if, for, while
clc; clear;
n = 7;
x = randi([-5,5],1,n)
texto = ['El número ',num2str(x(1))];

if x(1)>0
    texto2 = [' es positivo'];

elseif x(1)<0
    texto2 = [' es negativo'];
else
    texto2 = ' es cero';
end

texto3 = [texto,texto2];
% msgbox(texto3)

for i = 1:length(x)
    
end
