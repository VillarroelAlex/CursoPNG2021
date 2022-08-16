function guardar_aranceles(a)
% a es el archivo de texto
carrera=importdata(a); % creamos un cell
carrera=strrep(carrera,'$','');%aca eliminamos el simbolo $ del vector es como funciona el sed en bash 
carrera=strrep(carrera,'.','');%aca eliminamos los puntos porque matlab no los conoce como delimitadores cada 3 digitos
for i=1:length(carrera)
    aux_nom=carrera{i};
    aux=strfind(carrera{i},' ');%buscamos en que caracter estan los espacios,usamos el primero para separar dinero de nombre
    arancel(i,1)=str2num(aux_nom(1:aux(1)-1));%convertimos a valor la parte del string del dinero.
    nombre(i,1)={aux_nom(aux(1)+1:end)};%acá ponemos el nombre de la carrera
end
nombre=strrep(nombre,' ','_');%cambiar a _ los espacios vacios
save('aranceles.mat','nombre','arancel')
end