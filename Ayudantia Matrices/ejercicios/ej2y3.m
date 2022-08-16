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