N = input("Ingrese una matriz ");
n=size(N);
if ( N*N'==eye(n(1)))
    disp("La matriz es Ortogonal")
else
    disp("La matriz no es Ortogonal")
end