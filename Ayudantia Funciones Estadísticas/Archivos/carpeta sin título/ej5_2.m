function out=nanvar_propio(x)
%ingresar vector x

ind=isnan(x)==1;%buscar los indices de los nan
x(ind)=[];%eliminar los indices de los nan
out=var(x);%calcular la varianza
end