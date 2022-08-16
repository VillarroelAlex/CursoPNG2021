
% Mediante el Método de la Matriz Inversa
A = [1 2 3;4 5 6; 7 8 0];
B = [ 1;1 ;1];
% La respuesta estará almacenada en C%
C = inv(A)*B;

% O bien escalonando la matriz
A = [1 2 3;4 5 6; 7 8 0];
B = [ 1;1 ;1];
Ab= [A B];
rref(Ab) % rref escalona la matriz