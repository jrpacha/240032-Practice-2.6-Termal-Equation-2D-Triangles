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

plot(vertexs(:,1),vertexs(:,2),'-','color','black')

set(gca,'xtick',[])
set(gca,'xticklabel',[])

set(gca,'ytick',[])
set(gca,'yticklabel',[])

hold on

axis equal
axis off

circle([0,0],0.5,'color','black')

text(-0.15,0.55,'$u\equiv 50$','Interpreter','LaTeX','FontSize',18)
text(-0.15,1.05,'$u\equiv 10$','Interpreter','LaTeX','FontSize',18)
text(-0.15,-1.075,'$u\equiv 10$','Interpreter','LaTeX','FontSize',18)

text(-1.075,-0.1,'$u_{x}\equiv 0$','Interpreter','LaTeX','FontSize',18,rot=90)
text(1.075,-0.1,'$u_{x}\equiv 0$','Interpreter','LaTeX','FontSize',18,rot=90)

hold off

saveas(gcf,'plotDomain.png')

