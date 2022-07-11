%% clear
clc;
clear all;
close all;
%% Initialize map
x_obs = [-0.75,0.25,0.75,0.25,0.75,-0.75,-0.75,1.25,-1.25];
y_obs = [0.75,1.25,0.75,-0.25,-0.75,-0.75,-0.25,1.25,-0.25];

x_red = [-0.75,0.2,1.25,1.2,0.8,-0.9,-1.25];
y_red = [0.7,0.7,1.25,0.8,-0.8,-0.8,-1.25];

x_blue = [-0.75,0.9,0.3,0.25,1.2]; 
y_blue = [1.4,0.9,0.2,-0.75,-1.4];

x_green = [-1.23,1.25,-0.9,-1.2,0.6];
y_green = [1.25,1.25,0.2,-0.7,-1.2];

%% Plot the map
figure;
hold on
for i = 1:length(x_obs)
    viscircles([x_obs(i),y_obs(i)],0.05,'Color','k','Linewidth',1.5);
end
for i = 1:length(x_red)
    viscircles([x_red(i),y_red(i)],0.03,'Color','r','Linewidth',1.5);
end
for i = 1:length(x_blue)
    viscircles([x_blue(i),y_blue(i)],0.03,'Color','b','Linewidth',1.5);
end
for i = 1:length(x_green)
    viscircles([x_green(i),y_green(i)],0.03,'Color','g','Linewidth',1.5);
end
viscircles([-1.25,1.25],0.19,'Color','m','LineStyle','--')
grid on
xticks(linspace(-1.5,1.5,7));
yticks(linspace(-1.5,1.5,7));
axis square








