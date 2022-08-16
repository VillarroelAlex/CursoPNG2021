%desviacion estandar
function mmov(datos,rango)
for i=1:(length(datos)-rango+1)
    
    mm(i)=nanmean(datos(i:i+rango-1));%mm
    std(i)=nanstd(datos(i:i+rango-1));%std
end
plot(datos,'color','b','linewidth',2);
hold on
grid on
plot(mm,'r','linewidth',2);
plot(std,'k','linewidth',2)
str={'Serie de datos','media movil de ancho '+string(rango),...
    'Std movil de ancho ',string(rango)};
legend(str)
set(gca,'fontsize',14)
end

