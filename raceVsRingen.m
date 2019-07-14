%% Sammenligning mellem 4th ræs i London 18, med Sjællandsringen 19
close all
clc
clear

d = readtable('23-juni/11Omgange.csv');
q = readtable('data/2018-07-07 09-56 ECU Log 4th race - 17.csv');

a = 9;
r = 800/411;

RPM = 0:250:6000;

lambdaHigh = (ones(1,length(RPM))*1.4);
lambdaLow = (ones(1,length(RPM))*1.2);
lambdahigh = oldLambda2New(ones(1,length(RPM))*1.4);
lambdalow = oldLambda2New(ones(1,length(RPM))*1.2);


figure(1)
patch([RPM,fliplr(RPM)],[lambdaLow,lambdaHigh],[0.9 0.9 0.9])
hold on
plot(d.RPM(d.Gear == 1),d.Lambda(d.Gear == 1),'o')
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
saveas(gcf,'figurer til bachelor/4vR_R1.eps', 'epsc');


figure(2)
patch([RPM,fliplr(RPM)],[lambdalow,lambdahigh],[0.9 0.9 0.9])
hold on
plot(q.RPM(q.Gear == 1),oldLambda2New(q.Lambda(q.Gear == 1)),'o')
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
saveas(gcf,'figurer til bachelor/4vR_41.eps', 'epsc');

figure(3)
patch([RPM,fliplr(RPM)],[lambdaLow,lambdaHigh],[0.9 0.9 0.9])
hold on
plot(d.RPM(d.Gear == 2),d.Lambda(d.Gear == 2),'o')
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
saveas(gcf,'figurer til bachelor/4vR_R2.eps', 'epsc');

figure(4)
patch([RPM,fliplr(RPM)],[lambdalow,lambdahigh],[0.9 0.9 0.9])
hold on
plot(q.RPM(q.Gear == 2),oldLambda2New(q.Lambda(q.Gear == 2)),'o')
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
saveas(gcf,'figurer til bachelor/4vR_42.eps', 'epsc');


