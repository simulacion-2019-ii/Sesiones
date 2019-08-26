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
n_pos = 0;

for i = 1:length(x)
    if x(i) > 0
        n_pos = n_pos+1;
    end
end
n_pos
% otra forma
% b = x>0
% sum(b)
tic
n_pos = 1;  clc;    x
while sum(x>0)<n% mientras hay algún negativo
    n_pos = n_pos+1
    x = randi([-5,5],1,n)
    % break
    % continue
end
toc
x
