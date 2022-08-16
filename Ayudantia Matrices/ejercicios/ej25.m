%% 25. Cree un programa que calcule la inversa de una matriz cuadrada. Recuerde
%que para que exista matriz inversa debe cumplir que det(A)!=0 y que
%A^−1 = det−1 ∗ B'
% donde B es la matriz adjunta de A . Sugerencia use
%if para los casos en que no hay matriz inversa.

A=input('Ingrese una matriz: ');
%se extrae el size de A
[m,n]=size(A);

%se establece la condicion

    if m==n % si la matriz es cuadrada
        if det(A)~=0
            adj=adjoint(A); 
            inversa=1/det(A)*adj';
            disp(inversa)
        else
            disp('La matriz no posee inversa')
        end
    else
        disp('La matriz no es cuadrada')
    end
