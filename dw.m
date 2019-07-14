%% dwc
close all

d = readtable('5 juli/DWC - 69.csv');

a = 9;
r = 800/411;

RPM = 0:250:6000;

lambdaHigh = (ones(1,length(RPM))*1.4);
lambdaLow = (ones(1,length(RPM))*1.2);
%%
close all

figure(1)
patch([RPM,fliplr(RPM)],[lambdaLow,lambdaHigh],[0.9 0.9 0.9])
hold on
plot(d.RPM(d.Gear == 1),d.Lambda(d.Gear == 1),'o')
hold off
title('\lambda, Gear 1')
set(gca,'FontSize',15)
ylim([0.70 1.6])
xlim([1500 3750])
xlabel('RPM')
ylabel('\lambda')
legend('Desired \lambda','\lambda','Location','best')
grid();
set(gcf,'PaperUnits','centimeters','PaperPosition',[0 0 a*r a])
saveas(gcf,'figurer til bachelor/dwc_1.eps', 'epsc');

figure(2)
patch([RPM,fliplr(RPM)],[lambdaLow,lambdaHigh],[0.9 0.9 0.9])
hold on
plot(d.RPM(d.Gear == 2),d.Lambda(d.Gear == 2),'o')
hold off
title('\lambda, Gear 2')
set(gca,'FontSize',15)
ylim([0.70 1.6])
xlim([1500 3750])
xlabel('RPM')
ylabel('\lambda')
legend('Desired \lambda','\lambda','Location','best')
grid();
set(gcf,'PaperUnits','centimeters','PaperPosition',[0 0 a*r a])
saveas(gcf,'figurer til bachelor/dwc_2.eps', 'epsc');
