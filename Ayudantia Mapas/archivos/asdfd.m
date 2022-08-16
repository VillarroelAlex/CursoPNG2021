m_proj('lambert','lon',[-10 20],'lat',[33 48]); 

[CS,CH]=m_etopo2('contourf',[-5000:500:0 250:250:3000],'edgecolor','none');
 m_grid('linestyle','none','tickdir','out','linewidth',3);

colormap([ m_colmap('blues',80); m_colmap('gland',48)]);
brighten(.5);

ax=m_contfbar(1,[.5 .8],CS,CH);
title(ax,{'Level/m',''}); % Move up by inserting a blank line