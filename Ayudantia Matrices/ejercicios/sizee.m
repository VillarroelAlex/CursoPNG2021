function [B]= sizee(matriz)
    a=length(matriz(:,1));
    b=length(matriz(1,:));
    B=[a,b];
end