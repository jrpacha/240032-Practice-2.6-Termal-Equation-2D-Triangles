clearvars
close all
%
% Script to plot the domain of the BVP with the boundary conditions
%

vertexs = [-1,-1;
    1,-1;
    1,1;
    -1,1;
    -1,-1];

plot(vertexs(:,1),vertexs(:,2),'-','color','black','LineWidth',2)

set(gca,'xtick',[])
set(gca,'xticklabel',[])

set(gca,'ytick',[])
set(gca,'yticklabel',[])

hold on

axis equal
axis off

theta = linspace(0, 2*pi, 201);
rho = 0.5;
x = rho*cos(theta);
y = rho*sin(theta);
plot(x,y,'color','black','LineWidth',2.0)

text(-0.15,0.58,'$u\equiv 50$','Interpreter','LaTeX','FontSize',18)
text(-0.15,1.08,'$u\equiv 10$','Interpreter','LaTeX','FontSize',18)
text(-0.15,-1.09,'$u\equiv 10$','Interpreter','LaTeX','FontSize',18)

text(-1.09,-0.1,'$u_{x}\equiv 0$','Interpreter','LaTeX','FontSize',18,rot=90)
text(1.09,-0.1,'$u_{x}\equiv 0$','Interpreter','LaTeX','FontSize',18,rot=90)

hold off

saveas(gcf,'plotDomain.png')

