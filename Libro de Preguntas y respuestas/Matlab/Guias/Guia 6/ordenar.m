function ordenar(vec)
    if isvector(vec)
        n=length(vec);
        for i=1:n
            for j=i:n
                if vec(i)>vec(j)
                    aux=vec(i);
                    vec(i)=vec(j);
                    vec(j)=aux;
                end
            end
        end
        disp(vec)
    else
        fprintf('No ha ingresado un vector, intente nuevamente: \n')
        ordenar(input('Ingrese un vector \n'))
    end
end
