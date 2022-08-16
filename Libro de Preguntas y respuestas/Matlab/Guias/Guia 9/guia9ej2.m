iday=97;   % the day to show

% use ncdisp(filename) to discover file contents...

lat=ncread('uwnd.10m.gauss.2017.nc','lat');
lon=ncread('uwnd.10m.gauss.2017.nc','lon');
[LN,LT]=meshgrid(lon,lat);

mtime=ncread('uwnd.10m.gauss.2017.nc','time')/24+datenum(1800,1,1,0,0,0);
u=ncread('uwnd.10m.gauss.2017.nc','uwnd',[1,1,iday],[192,94,1]);
v=ncread('vwnd.10m.gauss.2017.nc','vwnd',[1,1,iday],[192,94,1]);
prate=ncread('prate.sfc.gauss.2017.nc','prate',[1,1,iday],[192,94,1]);

m_proj('miller','lon',[100 260],'lat',[0 65]);
m_coast('patch',[.8 .8 .8]);
hold on 
[CS,CH]=m_contourf(LN,LT,prate'*1e3,[0.05:.05:.7],'edgecolor','none');
m_windbarb(LN,LT,u' ,v',2,'units','m/s','linewi',1,'color','r');
hold off;
m_grid('box','fancy','tickdir','out');

ax=m_contfbar([.3 .7],.05,CS,CH);
set(ax,'fontsize',12)
xlabel(ax,'Mean Daily Precipitation Rate/(kg/m^2/s)');

title(['Vientos de superficie del Pacifico Norte: '...
    datestr(mtime(iday))],'fontsize',16);

colormap(flipud(m_colmap('Blues')))