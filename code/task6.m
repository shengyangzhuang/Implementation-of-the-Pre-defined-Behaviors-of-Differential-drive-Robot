clear
clc
M = dlmread('pos_log (8).csv',';',[1 1 511 3]);
T = dlmread('pos_log (8).csv',';',[1 0 511 0]);
a=26;
figure
set(gca,'linewidth',2,'fontsize',30,'fontname','Times')
plot(T(:,1),a-M(:,3),'LineWidth',2);
grid on
legend('error of \thetaR-\theta','FontSize',20)
xlabel('Timestamp','FontSize',20)
title('Error of \thetaR-\theta','FontSize',30)