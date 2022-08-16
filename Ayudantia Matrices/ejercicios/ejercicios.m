%% 2.Defina una matriz de ceros, una matriz de unos, y una matriz de
% ceroscon unos en la diagonal.

UNOS= ones(3,3);
CEROS= zeros(3,3); 
% Matriz con unos en su diagonal
%Creamos un vector con solo unos
v1=ones(1,4); 
Diagonal1=diag(v1);
Diagonal2=eye(4);

%% 3.Encuentre la funcion que entrega las dimensiones de la matriz
[a,b]=size(Diagonal);

%% 4.Sume una constante a una matriz. Sume y reste dos matrices.
A=ones(4);
Suma= 4.+A;

B=3.*ones(4,3);
C= A+B;

%% 5.Genere una matriz aleatoria de 4x4 y eleve cada uno de sus elementos al
%cubo. Transponga una matriz aleatoria.

 r = randi(4,4);
 r = r.^3;
 r = r';

 %% 13.Muestre numericamente un ejemplo de que (AB)'= B'A'
 A=randi(3,3);
 B=randi(3,3);
 C= (A*B)';
 D=B'*A';

 %% 15. Usando matrices, resuelva el siguiente sistema de ecuaciones mediante
%dos métodos distintos:
% x + 2y + 3z = 1
% 4x + 5y + 6z = 1
% 7x + 8y = 1

% Mediante el Método de la Matriz Inversa
A = [1 2 3;4 5 6; 7 8 0];
B = [ 1; 1 ;1];
%La respuesta estará almacenada en C%
C = inv(A)*B;

% O bien escalonando la matriz
A = [1 2 3;4 5 6; 7 8 0];
B = [ 1;1 ;1];
Ab= [A B];
rref(Ab) % rref escalona la matriz

%% 21. Cree un programa que indique si una matriz ingresada es ortogonal. (una
% A*A'=I

N = input("Ingrese una matriz ");
n=size(N);
if ( N*N'==eye(n(1)) && n(1)==n(2) )
    disp("La matriz es Ortogonal")
else
    disp("La matriz no es Ortogonal")
end
%matriz ortogonal: [0.8 0.6 0; -0.6 0.8 0; 0 0 1]

%% 26. Use las funciones tic/toc para calcular cuanto demora invertir una matriz
%aleatoria de 300x300. Repita este cálculo 30 veces. Haga un gráfico tipo boxplot
%de los resultados y explíquelo.
a= 1:30;
b= [ ];
for i=1:30
A = randi(300,300);
tic
inv(A);
b=[b toc];
end
figure(1)
boxplot(b)
grid on
ylabel("Tiempo [s]")
xlabel("Matrices")
title("Matrices Inversas")
figure(2)
plot(a,b,'o')