
function mymedia=nanmedia(vec) % Creamos nuestra funcion.
vec % Definimos nuestro vector
indx=isnan(vec); % Identifica la posicion de los NaN dentro del vector.
indx2=find(indx==1); % Los encuentra y permite hacer cambios en la variable.
vec(indx2)=[]; % Dejamos NaN igual a vacio.
vec % Nos delvuelve nuestro nuevo vector sin NaN.
mymedia=mean(vec); % Obtenemos la moda del vector.
end
