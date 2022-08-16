covid=importdata('TotalesNacionales.csv');
casos.fecha=covid.textdata(1,2:end);
casos.fecha=datetime(casos.fecha,'InputFormat','yyyy-MM-dd');
casos.nuevos=covid.data(1,:);
casos.recuperados=covid.data(3,:);
casos.fallecidos=covid.data(4,:);
casos.activos=covid.data(5,:);
figure()
campos={'nuevos','totales','recuperados','fallecidos','activos'};
titulos=covid.textdata(2:6,1);
for i=1:length(campos)
    subplot(3,2,i)
    plot(casos.fecha,casos.(string(campos(i))),'r','LineWidth',2.5)
    grid on
    title(titulos(i))
    xlabel('Fecha')
    ylabel('Cantidad de personas')
    set(gca,'fontsize',14)
end
sgtitle('Estadistica del Covid 19 en Chile','fontsize',16)