function out=ej6(monto)
%ingresar el monto
load aranceles.mat %cargar base de datos de los aranceles
ind=find(arancel<=monto);%buscar aranceles menores
out=nombre(ind);%entregar los nombres de las carreras
end
