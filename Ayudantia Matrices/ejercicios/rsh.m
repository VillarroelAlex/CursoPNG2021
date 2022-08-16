function [Output] = rsh(matriz,filas,columnas)

%Ingresa una matriz
if ismatrix(matriz)
    [a,b]=size(matriz);
    if (filas*columnas==a*b)
        %transformar a una filaxmatriz
        Output=zeros(filas,columnas);
        k=1;
        for i=1:columnas
            for j=1:filas
                Output(j,i)=matriz(k);
                k=k+1;
            end
        end
    else
        error('Number of elements must not change. Use [] as one of the size inputs to automatically calculate the appropriate size for that dimension.')
    end
else 
   return
end                  
end

