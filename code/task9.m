clear
clc
M = dlmread('pos_log (3).csv',';',[152 1 567 3]);
T = dlmread('pos_log (3).csv',';',[152 0 567 0]);
x0=-0.7346;
y0=-0.8558;
figure(1)
set(gca,'linewidth',2,'fontsize',30,'fontname','Times')
plot(T(:,1),x0-M(:,1)+y0-M(:,2),'LineWidth',2)
grid on
legend('error of d0','FontSize',20)
xlabel('Timestamp','FontSize',20)
ylabel('d0','FontSize',20)
title('Error of d0','FontSize',30)
figure(2)
plot(T(:,1),M(:,3)-44,'LineWidth',2)
grid on
legend('error of \thetaR-\theta','FontSize',20)
xlabel('Timestamp','FontSize',20)
ylabel('d0','FontSize',20)
title('Error of \thetaR-\theta','FontSize',30)