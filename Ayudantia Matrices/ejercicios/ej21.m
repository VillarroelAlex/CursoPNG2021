%% 21. Cree un programa que indique si una matriz ingresada es ortogonal. (una
% matriz ortogonal debe ser cuadrada y su inversa es igual a su traspuesta)
% Sugerencia : if, for

N = input("Ingrese una matriz ")
n=size(N);
if ( N*N'==eye(n(1)) )
    disp("La matriz es Ortogonal")
else
    disp("La matriz no es Ortogonal")
end
%matriz ortogonal: [0.8 0.6 0; -0.6 0.8 0; 0 0 1]