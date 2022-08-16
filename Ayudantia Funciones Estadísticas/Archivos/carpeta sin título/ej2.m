%%Ejercicio2:
%
%Escriba una función que lea directamente el archivo Aranceles UdeC 2016.txt y guarde una matrix ASCII con el nombre de 
%las carreras unido por el símbolo ” ”, y su costo sin el signo $ ni puntos. En Octave use system para llamar internamente
%sed/awk.
%
function ej2(a)
%no olvidemos que a se debe ingresar dentro de comillas simples 'a'.
%Lo que hará la funcion es cargar el archivo linea por linea. Luego de eso
%eliminará los valores de $ y el . separador. Tras esto, separa los numeros
%del nombre de la carrera y finalmente le pone el guion a los espacios
%vacios del nombre y guarda en un .mat el vector de nombres y aranceles.
%
carrera=textread(a,'%s','delimiter','\n');% Carga el archivo como un vector cell (celda) para tener
%el nombre y el arancel en la misma fila. Luego se separan, para hacer
%eso agregamos delimiter con \n. El \n significa que cambia al saltar
%linea.
%
%La función strrep encuentra y reemplaza.
carrera=strrep(carrera,'$','');% Eliminamos el simbolo $ del vector (es como funciona el sed en bash)
carrera=strrep(carrera,'.','');% Eliminamos los puntos. (hacemos esto porque matlab no los conoce como delimitadores
                               % cada 3 digitos(forma 1.000.000<=>1000000)
%
for i=1:length(carrera)
    aux_nom=carrera{i};
    aux=strfind(carrera{i},' ');%buscamos en que caracter estan los espacios,usamos el primero para separar dinero de nombre
    arancel(i,1)=str2num(aux_nom(1:aux(1)-1));%convertimos a valor numerico la parte del string del dinero.
    nombre(i,1)={aux_nom(aux(1)+1:end)};%Se va agregando los nombres de cada carrera.
end
%
%Finalmente, los espacios vación que vimos en aux_nom se convierten en _.
nombre=strrep(nombre,' ','_');%cambiar a _ los espacios vacios
save('aranceles.mat','nombre','arancel')
end

