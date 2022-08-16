function out=estadisticos_aranceles(vector)
%input
%   vector= es el vector de aranceles que se puede extraer del archivo
%   creado de la funcion guardar_aranceles

%output
% la salida es en una tabla, puedes agregarle mas estadisiticos siguiendo
% la idea de esta.
%redondeamos al primer decimal de millon, es decir dividimos cada valor por
%1 millon y redondeamos.
arancel=round(vector/1e6,1)*1e6;
%estadisticos a calcular
a1=std(arancel);%desviacion estandar
a2=mean(arancel);%promedio
a3=median(arancel);%mediana
a4=mode(arancel);%moda
estadistico={'Desviacion estandar';'promedio';'mediana';'moda'};
valor=[a1;a2;a3;a4];
out=table(estadistico,valor);
end