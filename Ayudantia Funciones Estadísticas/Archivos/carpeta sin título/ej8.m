load nuevo.mat
%usamos la funcion quantile(arancel,0.75) para ubicar el percentil 75 y
%desde ahi ubicar las carreras m�s caras
num=quantile(arancel,0.75);
ind=find(arancel>=num);
disp('Las carreras m�s caras son:')
table(nombre(ind),arancel(ind))