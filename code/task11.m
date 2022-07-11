clear
clc
M = dlmread('pos_log (5).csv',';',[1 1 653 3]);
T = dlmread('pos_log (5).csv',';',[1 0 653 0]);
xg=2.1884;
yg=0.5912;
figure
set(gca,'linewidth',2,'fontsize',30,'fontname','Times')
plot(T(:,1),M(:,1)-xg,'LineWidth',2);
hold on;
plot(T(:,1),M(:,2)-yg,'LineWidth',2);
grid on
legend('error of x','error of y','FontSize',20)
xlabel('Timestamp','FontSize',20)
title('Error of x,y','FontSize',20)