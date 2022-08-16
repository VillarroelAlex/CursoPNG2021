clear all
clc
%cargar valores de aranceles
load aranceles.mat
valor=max(arancel);%calculamos el valor maximo
maxi=round(valor/1000000)+0.5; %esto es dividr por mil para despues aproximar y sumarle 0.5
%esto lo hice para cubrir el rango donde este el valor mas grande  ej.
%   valor 5244000 dividido en millon es 5.244 redondeado es 5, más 0.5 asi
%   tienes 5.5 . Luego si multiplicas por millon te queda 5.500.000 que
%   cubre el valor mas grande
rangos=[0:500000:maxi*1000000];
for i=1:length(rangos)-1
   ind=find(arancel> rangos(i) & arancel <=rangos(i+1)); %buscar los aranceles entre el rango de valores 
   rango(i).ran=arancel(ind);%guardar en estructura
   cant(i)=length(ind);%calculamos la cantidad de aranceles en ese rango de precio
end
bar(rangos(2:end),cant)%grafico de barras eje x valor al cual es menor eje y cantidad de carreras