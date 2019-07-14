%% Sammenligning mellem 4th ræs i London 18, med Sjællandsringen 19
close all
clc
clear

d = readtable('23-juni/11Omgange.csv');
q = readtable('3. juli/1. race/2019-07-03 10-56 ECU Log - 32.csv');

a = 9;
r = 800/411;

RPM = 0:250:6000;

lambdaHigh = (ones(1,length(RPM))*1.4);
lambdaLow = (ones(1,length(RPM))*1.2);


figure(1)
patch([RPM,fliplr(RPM)],[lambdaLow,lambdaHigh],[0.9 0.9 0.9])
hold on
plot(d.RPM(d.Gear == 1 & d.Water_temperature__C_ <= 80 & d.Water_temperature__C_ >= 65),d.Lambda(d.Gear == 1 & d.Water_temperature__C_ <= 80 & d.Water_temperature__C_ >= 65),'o')
hold off
title('\lambda, gear 1')
set(gca,'FontSize',15)
ylim([0.70 1.6])
xlim([1500 3750])
xlabel('RPM')
ylabel('\lambda')
legend('Desired \lambda','\lambda','Location','best')
grid();
set(gcf,'PaperUnits','centimeters','PaperPosition',[0 0 a*r a])
saveas(gcf,'figurer til bachelor/R1_lt80.eps', 'epsc');


figure(2)
patch([RPM,fliplr(RPM)],[lambdaLow,lambdaHigh],[0.9 0.9 0.9])
hold on
plot(q.RPM(q.Gear == 1 & q.Water_temperature__C_ <= 80 & q.Water_temperature__C_ >= 65),(q.Lambda(q.Gear == 1 & q.Water_temperature__C_ <= 80 & q.Water_temperature__C_ >= 65)),'o')
hold off
title('\lambda, gear 1')
set(gca,'FontSize',15)
ylim([0.70 1.6])
xlim([1500 3750])
xlabel('RPM')
ylabel('\lambda')
legend('Desired \lambda','\lambda','Location','best')
grid();
set(gcf,'PaperUnits','centimeters','PaperPosition',[0 0 a*r a])
saveas(gcf,'figurer til bachelor/V1_lt80.eps', 'epsc');

figure(3)
patch([RPM,fliplr(RPM)],[lambdaLow,lambdaHigh],[0.9 0.9 0.9])
hold on
plot(d.RPM(d.Gear == 2 & d.Water_temperature__C_ <= 80 & d.Water_temperature__C_ >= 65),d.Lambda(d.Gear == 2 & d.Water_temperature__C_ <= 80 & d.Water_temperature__C_ >= 65),'o')
hold off
title('\lambda, gear 2')
set(gca,'FontSize',15)
ylim([0.70 1.6])
xlim([1500 3750])
xlabel('RPM')
ylabel('\lambda')
legend('Desired \lambda','\lambda','Location','best')
grid();
set(gcf,'PaperUnits','centimeters','PaperPosition',[0 0 a*r a])
saveas(gcf,'figurer til bachelor/R2_lt80.eps', 'epsc');

figure(4)
patch([RPM,fliplr(RPM)],[lambdaLow,lambdaHigh],[0.9 0.9 0.9])
hold on
plot(q.RPM(q.Gear == 2 & q.Water_temperature__C_ <= 80 & q.Water_temperature__C_ >= 65),(q.Lambda(q.Gear == 2 & q.Water_temperature__C_ <= 80 & q.Water_temperature__C_ >= 65)),'o')
hold off
title('\lambda, gear 2')
set(gca,'FontSize',15)
ylim([0.70 1.6])
xlim([1500 3750])
xlabel('RPM')
ylabel('\lambda')
legend('Desired \lambda','\lambda','Location','best')
grid();
set(gcf,'PaperUnits','centimeters','PaperPosition',[0 0 a*r a])
saveas(gcf,'figurer til bachelor/V2_lt80.eps', 'epsc');


