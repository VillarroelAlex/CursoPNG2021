[x,y,z]=meshgrid(-2:2,-2:2,-2:2);
u=y;
v=z;
w=x;
quiver3(x,y,z,u,v,w)
hold on
box on
xlim([-2 2]);ylim([-2 2]);zlim([-2 2]);
ax = gca;
ax.BoxStyle = 'full';
title('campo vectorial de F(x,y,z)= (y)i +(z)j+ (x)k','fontsize',14)