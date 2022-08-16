covid=load('casosdiarios.txt'); % se cargan los datos
% se crea el vector de las fechas
fecha=datenum(2020,3,2):1:datenum(2021,7,20);
p1=polyfit(fecha,covid,7);
y2=polyval(p1,fecha);
%Estadisticos
Media=mean(covid)*ones(size(covid));
Mediana=median(covid)*ones(size(covid));
Q1=quantile(covid,.25)*ones(size(covid));
Q3=quantile(covid,.75)*ones(size(covid));
%
figure()
plot(fecha,covid,'color','b','LineWidth',2.5)
hold on
plot(fecha,y2,'r','Linewidth',2.5)
plot(fecha,Media,'--b','Linewidth',2.5)
plot(fecha,Mediana,'--r','Linewidth',2.5)
plot(fecha,Q1,'-.k','Linewidth',2.5)
plot(fecha,Q3,'--k','Linewidth',2.5)
datetick('x','mmmyyyy')
ylim([0 inf])
grid minor
legend('Casos diarios de Covid19','Polinomio de grado 7',...
    'Media','Mediana','Q1','Q3')
xlabel('Fecha')
ylabel('Numero de casos')
title('Casos diarios de Covid19')
set(gca,'Fontsize',14)