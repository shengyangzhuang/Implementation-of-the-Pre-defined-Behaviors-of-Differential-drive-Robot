clear
clc
M = dlmread('pos_log (7).csv',';',[1975 1 2954 3]);
T = dlmread('pos_log (7).csv',';',[1975 0 2954 0]);
xg=2.1884;
yg=0.5912;
x0=-0.7346;
y0=-0.8558;
a=26.337;
figure(1)
set(gca,'linewidth',2,'fontsize',30,'fontname','Times')
plot(T(:,1),cosd(a)*(xg-M(:,1))+sind(a)*(yg-M(:,2)),'LineWidth',2);
grid on
legend('error of dg','FontSize',20)
xlabel('Timestamp','FontSize',20)
title('Error of dg','FontSize',20)
figure(2)
set(gca,'linewidth',2,'fontsize',30,'fontname','Times')
plot(T(:,1),sin(a)*(M(:,1)+50*cos(M(:,3))-x0)-cos(a)*(M(:,2)+50*sin(M(:,3))-y0),'LineWidth',2);
grid on
legend('error of dp','FontSize',20)
xlabel('Timestamp','FontSize',20)
title('Error of dp','FontSize',20)