% SYDE 572 Lab 0 - Matlab Introduction
% Name: Kevin Xue 

clear % clear all variables from memory
close all % close all open figures
% define the mean and variance of the pdf
mu = [0 0]';
sigma = [1 0; 0 1];
dx = 0.1; % step-size
x1 = [-3:dx:3]; % range of the random variable x1
x2 = [-3:dx:3]; % range of the random variable x2
% this calls the function we create
y = Gauss2d(x1,x2,mu,sigma);
z = (y>0.1);
disp(z);
figure
subplot(2,1,1);
surf(x1,x2,y);
xlabel('x_1');
ylabel('x_2');
colormap("jet")
% Show contours of the pdf
subplot(2,1,2);
contour(x1,x2,y);
xlabel('x_{1}');
ylabel('x_{2}');
axis equal
% Show a colour map of the pdf
figure
imagesc(x1,x2,y)
xlabel('x_{1}');
ylabel('x_{2}');
hold on % allow us to plot more on the same figure
plot(mu(1,1),mu(2,1),'y.'); % plot the mean
xlabel('x_{1}');
ylabel('x_{2}');

