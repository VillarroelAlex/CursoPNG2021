% Cargar archivo %
%% GUIA FUNCIONES ESTADISTICAS
clear all;close all
%% Path
addpath(genpath('C:\Users\alex_\OneDrive\Desktop\PNG'))
a=load('cuarteto.txt');
%% Ej 1
% Promedio de cada columna %
prom=mean(a)';
% Desviación estándar de cada columna%
de=std(a)';
% Covarianza entre x_i e y_i %
cv=[];
pen=[];
R2=[];
k=1;
for i=1:4
    x_i=a(:,k); % x tomaria los valores de las columnas 1,3,5,7
    y_i=a(:,k+1); % y tomaría los valores de las columnas 2,4,6,8
    k=k+2;
    cv=[cv cov(x_i,y_i,0)]; % se creó una lista vacía para sumarse a si misma
    p=polyfit(x_i,y_i,1);
    f=polyval(p,x_i);  
    pen=[pen; p(1)];  % Pendiente para cada par ordenado
    
    subplot(2,2,i)% Resultará en un 2x2  % Graficos
    plot(x_i,y_i,'ko','Color','b')
    hold on
    plot(x_i,f,'Color','r')
    xlabel('Eje X')
    ylabel('Eje Y')
    title(['Par n° ',sprintf('%g',i)]) % Transformar el i a titulo
    
    % Coeficiente de Determinación
    r=fitlm(x_i,y_i); % Modelo de Arreglo de una Regresión lineal
    R2=[R2 r.Rsquared.Ordinary]; % Extrae el Coef de Determinación        
end
% Guardamos los datos que nos interesan
prom_x=prom(1:2:7);
prom_y=prom(2:2:8);
de_x=prom(1:2:7);
de_y=prom(2:2:8);
cv=cv(1,2:2:8)';
R2=R2';
table=table(prom_x,prom_y,de_x,de_y,cv,pen,R2);