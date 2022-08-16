function guardararanceles(a)

%se debe ingresar el nombre entre ' ' 
%lo que hace la funcion es cargar el archivo linea por linea. Luego de eso
%elimina los valores de $ y el . separador. Tras esto, separa los numeros
%del nombre de la carrera y finalmente le pone el guion a los espacios
%vacios del nombre y guarda en un .mat el vector de nombres y aranceles
%para cargar la nueva base de datos, se debe poner load nombre del archivo
%creado.mat


[carrera]=textread(a,'%s','delimiter','\n');%cargar el archivo como un vector cell para tener
%el nombre y el arancel en la misma fila, los separamos despues, para hacer
%eso agregamos delimiter con \n. El \n significa que cambia al saltar linea

carrera=strrep(carrera,'$','');%aca eliminamos el simbolo $ del vector es como funciona el sed en bash 
carrera=strrep(carrera,'.','');%aca eliminamos los puntos porque matlab no los conoce como delimitadores cada 3 digitos
%carrera=strsplit(carrera,' ')
for i=1:length(carrera)
    aux_nom=carrera{i};
    aux=strfind(carrera{i},' ');%buscamos en que caracter estan los espacios,usamos el primero para separar dinero de nombre
    arancel(i,1)=str2num(aux_nom(1:aux(1)-1));%convertimos a valor la parte del string del dinero.
    nombre(i,1)={aux_nom(aux(1)+1:end)};%acá ponemos el nombre de la carrera
end
nombre=strrep(nombre,' ','_');%cambiar a _ los espacios vacios
save('aranceles.mat','nombre','arancel')
end