function ajuste(datos,grado)
n=length(datos);
x=1:n;
promedio=nanmean(datos)*ones(n,1);
p1=polyfit(1:length(datos),datos,grado);
y2=polyval(p1,x);
figure()
plot(datos,'o','LineStyle','none','color',...
    'b','MarkerFaceColor','b')
hold on
plot(x,y2,'r','LineWidth',2)
plot(x,promedio,'k','LineWidth',2)
grid on
xlim([0 n])
ylim([min(datos) max(datos)])
str='Ajuste de grado '+string(grado);
legend('datos',str,'promedio')
end