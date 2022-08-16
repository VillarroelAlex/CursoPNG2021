m_proj('miller','lat',[-77 77]);   
m_coast('patch',[.7 1 .7],'edgecolor','none'); 
m_grid('box','fancy','linestyle','-','gridcolor','w','backcolor',...
        [.2 .65 1]);
    
cities={'Florida','Madrid'}; 
lons=[ -81.5158 3.7038];
lats=[ 27.6648 40.4168]; 
for k=1:2
   [range,ln,lt]=m_lldist([-70.6693 lons(k)],[-33.4489  lats(k)],40); 
    m_line(ln,lt,'color','r','linewi',2); 
    m_text(ln(end),lt(end),sprintf('%s - %d km',cities{k},...
    round(range)),'fontsize',16);
end
title('Ruta mas corta entre dos puntos en la Tierra',...
        'fontsize',16,'fontweight','bold');
    
set(gcf,'color','w');...
        % Need to do this otherwise 'print' turns the lakes black
    
