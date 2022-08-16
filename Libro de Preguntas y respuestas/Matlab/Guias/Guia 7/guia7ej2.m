%datos extraidos de https://mawun.cr2.cl/
addpath('C:\Users\alex_\Archivos\Files-PNG\')
datos=importdata('pcp_diaria.csv');
fecha=datos.textdata(2:end,1);
fecha=datetime(fecha);
estacion_mm=datos.data(:,1);
estacion_mm(estacion_mm==-9999)=NaN;
figure()
plot(fecha,estacion_mm,'b','LineWidth',2)
hold on
grid on
axis tight
xlabel('Fecha')
ylabel('Precipitacion[mm]')
title('Precipitacion diaria registrada',...
    ' en la estacion de Rio Mapocho, Rinconada de Maipu');
set(gca,'FontSize',16)