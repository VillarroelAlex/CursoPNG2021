load nuevo.mat
%usamos la funcion quantile(arancel,0.75) para ubicar el percentil 75 y
%desde ahi ubicar las carreras más caras
num=quantile(arancel,0.75);
ind=find(arancel>=num);
disp('Las carreras más caras son:')
table(nombre(ind),arancel(ind))