[x,y]=meshgrid(-5:5,-5:5);
z_x=log(1+y.^2);
z_y=log(1+x.^2);
figure()
quiver(x,y,z_x,z_y)
hold on
xline(0)
yline(0)
title('Campo vectorial de F(x,y)=\langle ln(1+y^{2}),ln(1+x^{2}) \rangle')
xlim([-5 5])
ylim([-5 5])
grid on
set(gca,'fontsize',16)