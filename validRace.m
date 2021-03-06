%% Data fra vores ene gyldige omgang
close all

d = readtable('3. juli/1. race/2019-07-03 10-56 ECU Log - 32.csv');

a = 9;
r = 800/411;

RPM = 0:250:6000;

lambdaHigh = (ones(1,length(RPM))*1.4);
lambdaLow = (ones(1,length(RPM))*1.2);

%%
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
saveas(gcf,'figurer til bachelor/429_1.eps', 'epsc');

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
saveas(gcf,'figurer til bachelor/429_2.eps', 'epsc');


%% This is gonna be hell
close all


lap1_burn1 = d(1:204,:);
lap1_burn2 = d(778:882,:);

lap2_burn1 = d(2076:2261,:);
lap2_burn2 = d(2815:2965,:);

lap3_burn1 = d(4276:4476,:);
lap3_burn2 = d(5000:5145,:);

lap4_burn1 = d(6349:6549,:);
lap4_burn2 = d(7078:7229,:);

lap5_burn1 = d(8514:8714,:);
lap5_burn2 = d(9150:9404,:);

lap6_burn1 = d(10599:10799,:);
lap6_burn2 = d(11336:11486,:);

lap7_burn1 = d(12721:12921,:);
lap7_burn2 = d(13450:13601,:);

lap8_burn1 = d(14887:15087,:);
lap8_burn2 = d(15509:15759,:);

lap9_burn1 = d(16987:17187,:);
lap9_burn2 = d(17684:17834,:);

lap10_burn1 = d(19063:19263,:);
lap10_burn2 = d(19747:19897,:);

lap11_burn1 = d(20897:21097,:);
lap11_burn2 = d(21664:21814,:);

n = 1:130;

% figure(1)
% plot(lap2_burn1.RPM(lap2_burn1.burning == 1 & lap2_burn1.Gear == 2))
% hold on
% plot(lap3_burn1.RPM(lap3_burn1.burning == 1 & lap3_burn1.Gear == 2))
% plot(lap4_burn1.RPM(lap4_burn1.burning == 1 & lap4_burn1.Gear == 2))
% plot(lap5_burn1.RPM(lap5_burn1.burning == 1 & lap5_burn1.Gear == 2))
% plot(lap6_burn1.RPM(lap6_burn1.burning == 1 & lap6_burn1.Gear == 2))
% plot(lap7_burn1.RPM(lap7_burn1.burning == 1 & lap7_burn1.Gear == 2))
% plot(lap8_burn1.RPM(lap8_burn1.burning == 1 & lap8_burn1.Gear == 2))
% plot(lap9_burn1.RPM(lap9_burn1.burning == 1 & lap9_burn1.Gear == 2))
% plot(lap10_burn1.RPM(lap10_burn1.burning == 1 & lap10_burn1.Gear == 2))
% plot(lap11_burn1.RPM(lap11_burn1.burning == 1 & lap11_burn1.Gear == 2))
% hold off
% title('RPM, 1. burn')
% set(gca,'FontSize',15)
% xlabel('Samples')
% ylim([2000 4000])
% xlim([1500 4000])
% ylabel('RPM')
% grid();
% set(gcf,'PaperUnits','centimeters','PaperPosition',[0 0 a*r a])
% saveas(gcf,'figurer til bachelor/429_R1.eps', 'epsc');

burn1 = [lap1_burn1;lap2_burn1;lap3_burn1;lap4_burn1;lap5_burn1;lap6_burn1;lap7_burn1;lap8_burn1;lap9_burn1;lap10_burn1;lap11_burn1];
burn2 = [lap1_burn2;lap2_burn2;lap3_burn2;lap4_burn2;lap5_burn2;lap6_burn2;lap7_burn2;lap8_burn2;lap9_burn2;lap10_burn2;lap11_burn2];



figure(1)
patch([RPM,fliplr(RPM)],[lambdaLow,lambdaHigh],[0.9 0.9 0.9])
hold on
plot(burn1.RPM(burn1.Gear == 2),burn1.Lambda(burn1.Gear == 2),'o')
% plot(lap2_burn1.Lambda(lap2_burn1.burning == 1 & lap2_burn1.Gear == 2))
% plot(lap3_burn1.Lambda(lap3_burn1.burning == 1 & lap3_burn1.Gear == 2))
% plot(lap4_burn1.Lambda(lap4_burn1.burning == 1 & lap4_burn1.Gear == 2))
% plot(lap5_burn1.Lambda(lap5_burn1.burning == 1 & lap5_burn1.Gear == 2))
% plot(lap6_burn1.Lambda(lap6_burn1.burning == 1 & lap6_burn1.Gear == 2))
% plot(lap7_burn1.Lambda(lap7_burn1.burning == 1 & lap7_burn1.Gear == 2))
% plot(lap8_burn1.Lambda(lap8_burn1.burning == 1 & lap8_burn1.Gear == 2))
% plot(lap9_burn1.Lambda(lap9_burn1.burning == 1 & lap9_burn1.Gear == 2))
% plot(lap10_burn1.Lambda(lap10_burn1.burning == 1 & lap10_burn1.Gear == 2))
% plot(lap11_burn1.Lambda(lap11_burn1.burning == 1 & lap11_burn1.Gear == 2))
hold off
title('\lambda, 1. burn')
set(gca,'FontSize',15)
ylim([0.7 1.6])
xlim([1500 4000])
xlabel('RPM')
ylabel('\lambda')
grid();
set(gcf,'PaperUnits','centimeters','PaperPosition',[0 0 a*r a])
saveas(gcf,'figurer til bachelor/429_L1.eps', 'epsc');

% figure(3)
% plot(lap2_burn2.RPM(lap2_burn2.burning == 1))
% hold on
% plot(lap3_burn2.RPM(lap3_burn2.burning == 1))
% plot(lap4_burn2.RPM(lap4_burn2.burning == 1))
% plot(lap5_burn2.RPM(lap5_burn2.burning == 1))
% plot(lap6_burn2.RPM(lap6_burn2.burning == 1))
% plot(lap7_burn2.RPM(lap7_burn2.burning == 1))
% plot(lap8_burn2.RPM(lap8_burn2.burning == 1))
% plot(lap9_burn2.RPM(lap9_burn2.burning == 1))
% plot(lap10_burn2.RPM(lap10_burn2.burning == 1))
% plot(lap11_burn2.RPM(lap11_burn2.burning == 1))
% hold off
% title('RPM, 2. burn')
% set(gca,'FontSize',15)
% ylim([2000 4000])
% xlim([1500 4000])
% xlabel('Samples')
% ylabel('RPM')
% grid();
% set(gcf,'PaperUnits','centimeters','PaperPosition',[0 0 a*r a])
%  saveas(gcf,'figurer til bachelor/429_R2.eps', 'epsc');


figure(2)
patch([RPM,fliplr(RPM)],[lambdaLow,lambdaHigh],[0.9 0.9 0.9])
hold on
plot(burn2.RPM(burn2.Gear == 2),burn2.Lambda(burn2.Gear == 2),'o')
% plot(lap2_burn2.Lambda(lap2_burn2.burning == 1))
% plot(lap3_burn2.Lambda(lap3_burn2.burning == 1))
% plot(lap4_burn2.Lambda(lap4_burn2.burning == 1))
% plot(lap5_burn2.Lambda(lap5_burn2.burning == 1))
% plot(lap6_burn2.Lambda(lap6_burn2.burning == 1))
% plot(lap7_burn2.Lambda(lap7_burn2.burning == 1))
% plot(lap8_burn2.Lambda(lap8_burn2.burning == 1))
% plot(lap9_burn2.Lambda(lap9_burn2.burning == 1))
% plot(lap10_burn2.Lambda(lap10_burn2.burning == 1))
% plot(lap11_burn2.Lambda(lap11_burn2.burning == 1))
hold off
title('\lambda, 2. burn')
set(gca,'FontSize',15)
ylim([0.7 1.6])
xlim([1500 4000])
xlabel('RPM')
ylabel('\lambda')
grid();
set(gcf,'PaperUnits','centimeters','PaperPosition',[0 0 a*r a])
saveas(gcf,'figurer til bachelor/429_L2.eps', 'epsc');
%%
close all
figure(5)
yyaxis left
plot([lap2_burn1.RPM(lap2_burn1.burning == 1);lap2_burn2.RPM(lap2_burn2.burning == 1)])
ylim([0 4000])
ylabel('RPM')
hold on
yyaxis right
plot([lap2_burn1.Gear(lap2_burn1.burning == 1);lap2_burn2.Gear(lap2_burn2.burning == 1)])
ylim([0 3])
yticks([1,2])
ylabel('Gear')
hold off
title('RPM during a lap')
set(gca,'FontSize',15)
xlim([1 250])
xlabel('Samples')
grid();
set(gcf,'PaperUnits','centimeters','PaperPosition',[0 0 a*r a])
saveas(gcf,'figurer til bachelor/429_exLap.eps', 'epsc');



