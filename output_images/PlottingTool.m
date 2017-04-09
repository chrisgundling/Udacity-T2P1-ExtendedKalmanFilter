%% Udacity Extended Kalman Filter Plotting Tool
% By: Chris Gundling, chrisgundling@gmail.com
clear all;
close all;
clc;

%% Dummy Legend
hold on;
x1 = linspace(390,400,10);
y1 = linspace(390,400,10);
plot(x1,y1,'g.')
plot(x1,y1,'b.')
plot(x1,y1,'k-')
plot(x1,y1,'r-')
legend('Radar','Lidar','GroundTruth','Predictions');

%% Read in the Data
data = readtable('sample-laser-radar-measurement-data-1.txt','Delimiter','tab','ReadVariableNames',false);
ground_truth = readtable('../outputs/output1.txt','Delimiter','tab','ReadVariableNames',false);

%% Plot the Radar and Lidar Measurements
count = 0;
for i = 1 : length(data.Var2)
    if char(data.Var1(i)) == 'R'
        data.Var10(i) = cos(data.Var3(i))*data.Var2(i);
        data.Var11(i) = sin(data.Var3(i))*data.Var2(i);
        plot(data.Var10(i),data.Var11(i),'g.','LineWidth',2)    
        count = count + 1;
    end
    if char(data.Var1(i)) == 'L'
        plot(data.Var2(i),data.Var3(i),'b.','LineWidth',2)
        count = count + 1;
    end
end

%% Plot the grounth truth line
plot(ground_truth.Var7,ground_truth.Var8,'k-','LineWidth',1)

%% Plot the Predicted Path
plot(ground_truth.Var1,ground_truth.Var2,'r-','LineWidth',1)

%% Plot Properties
axis([4 12 -14 2]);
%axis([0 220 -5 40]);
xlabel('px');
ylabel('py');
