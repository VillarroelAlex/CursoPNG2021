%% 26. Use las funciones tic/toc para calcular cuanto demora invertir una matriz
% aleatoria de 300x300. Repita este cálculo 30 veces. Haga un gráfico tipo boxplot
% de los resultados y explíquelo.
b= [ ];
for i=1:30
A = randi(300,300);
tic
inv(A);
b=[b toc];
end
boxplot(b)
grid on
ylabel("Tiempo [s]")
xlabel("Matrices")