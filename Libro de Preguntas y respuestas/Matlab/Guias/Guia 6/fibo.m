function out=fibo(n)
      if isnumeric(n) % si es numerico
          if n==round(n) && n>=1 % si es natural
            a=0;
            b=1;
            out=[];
            for i=1:n
                out=[out a];
                c=a+b;
                a=b;
                b=c;
            end
          
        else
        fprintf('Ha ingresado un numero no natural,intente nuevamente\n')
        fibo(input('Ingrese un numero natural: \n'))
        end
      else
            fprintf('No ha ingresado un numero,\n')
            fibo(input('Ingrese un numero natural: \n'))
      end
end
