clear
clc
M = dlmread('pos_log (2).csv',';',[227 1 797 2]);
T = dlmread('pos_log (2).csv',';',[227 0 797 0]);
x0=-0.7346;
y0=-0.8558;
figure
set(gca,'linewidth',2,'fontsize',30,'fontname','Times')
plot(T(:,1),x0-M(:,1)+y0-M(:,2),'LineWidth',2)
grid on
legend('error of d0','FontSize',20)
xlabel('Timestamp','FontSize',20)
ylabel('d0','FontSize',20)
title('Error of d0','FontSize',30)