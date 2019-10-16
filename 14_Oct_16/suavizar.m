function salida = suavizar(entrada,n)
% Calcular el promedio de los últimos n valores

salida = zeros(1,n-1);

for i = n:length(entrada)
    tmp = mean(entrada(i-n+1:i));
    salida(i) = tmp;
    % salida = [salida tmp];
end

end

