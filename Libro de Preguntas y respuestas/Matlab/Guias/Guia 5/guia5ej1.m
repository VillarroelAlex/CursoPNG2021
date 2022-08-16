covid=load('casosdiarios.txt'); % se cargan los datos
% se crea el vector de las fechas
fecha=datenum(2020,3,2):1:datenum(2021,7,20);
p1=polyfit(fecha,covid,7);
y2=polyval(p1,fecha);
figure()
plot(fecha,covid,'color','b','LineWidth',2.5)
hold on
plot(fecha,y2,'r','Linewidth',2.5)
datetick('x','mmmyyyy')
ylim([0 inf])
grid minor
legend('Casos diarios de Covid19','Polinomio de grado 7')
xlabel('Fecha')
ylabel('Numero de casos')
title('Casos diarios de Covid19')
set(gca,'Fontsize',14)