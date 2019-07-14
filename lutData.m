d = readtable('theGoodDataFromLutRun1.csv');


d.lambda_1(isnan(d.lambda_1)) = 0;
d.lambda_2(isnan(d.lambda_2)) = 0;
 
d.oil_temp1(isnan(d.oil_temp1)) = 0;
d.oil_temp2(isnan(d.oil_temp2)) = 0;
   
d.water_temp1(isnan(d.water_temp1)) = 0;
d.water_temp2(isnan(d.water_temp2)) = 0;
   
d.air_temp1(isnan(d.air_temp1)) = 0;
d.air_temp2(isnan(d.air_temp2)) = 0;

l1_1_60 = d.lambda_1(d.temp == 60 & d.sweep == 1);
l1_2_60 = d.lambda_1(d.temp == 60 & d.sweep == 2);
l1_3_60 = d.lambda_1(d.temp == 60 & d.sweep == 3);

l2_1_60 = d.lambda_2(d.temp == 60 & d.sweep == 1);
l2_2_60 = d.lambda_2(d.temp == 60 & d.sweep == 2);
l2_3_60 = d.lambda_2(d.temp == 60 & d.sweep == 3);

l1_1_65 = d.lambda_1(d.temp == 65 & d.sweep == 4);
l1_2_65 = d.lambda_1(d.temp == 65 & d.sweep == 5);
l1_3_65 = d.lambda_1(d.temp == 65 & d.sweep == 6);
l1_4_65 = d.lambda_1(d.temp == 65 & d.sweep == 7);

l2_1_65 = d.lambda_2(d.temp == 65 & d.sweep == 4);
l2_2_65 = d.lambda_2(d.temp == 65 & d.sweep == 5);
l2_3_65 = d.lambda_2(d.temp == 65 & d.sweep == 6);
l2_4_65 = d.lambda_2(d.temp == 65 & d.sweep == 7);

l1_1_70 = d.lambda_1(d.temp == 70 & d.sweep == 8);
l1_2_70 = d.lambda_1(d.temp == 70 & d.sweep == 9);
l1_3_70 = d.lambda_1(d.temp == 70 & d.sweep == 10);
l1_4_70 = d.lambda_1(d.temp == 70 & d.sweep == 11);

l2_1_70 = d.lambda_2(d.temp == 70 & d.sweep == 8);
l2_2_70 = d.lambda_2(d.temp == 70 & d.sweep == 9);
l2_3_70 = d.lambda_2(d.temp == 70 & d.sweep == 10);
l2_4_70 = d.lambda_2(d.temp == 70 & d.sweep == 11);


l1_1_75 = d.lambda_1(d.temp == 75 & d.sweep == 12);
l1_2_75 = d.lambda_1(d.temp == 75 & d.sweep == 13);

l2_1_75 = d.lambda_2(d.temp == 75 & d.sweep == 12);
l2_2_75 = d.lambda_2(d.temp == 75 & d.sweep == 13);

t1_1_60 = d.tinj_1(d.temp == 60 & d.sweep == 1);
t1_2_60 = d.tinj_1(d.temp == 60 & d.sweep == 2);
t1_3_60 = d.tinj_1(d.temp == 60 & d.sweep == 3);

t2_1_60 = d.tinj_2(d.temp == 60 & d.sweep == 1);
t2_2_60 = d.tinj_2(d.temp == 60 & d.sweep == 2);
t2_3_60 = d.tinj_2(d.temp == 60 & d.sweep == 3);

t1_1_65 = d.tinj_1(d.temp == 65 & d.sweep == 4);
t1_2_65 = d.tinj_1(d.temp == 65 & d.sweep == 5);
t1_3_65 = d.tinj_1(d.temp == 65 & d.sweep == 6);
t1_4_65 = d.tinj_1(d.temp == 65 & d.sweep == 7);

t2_1_65 = d.tinj_2(d.temp == 65 & d.sweep == 4);
t2_2_65 = d.tinj_2(d.temp == 65 & d.sweep == 5);
t2_3_65 = d.tinj_2(d.temp == 65 & d.sweep == 6);
t2_4_65 = d.tinj_2(d.temp == 65 & d.sweep == 7);

t1_1_70 = d.tinj_1(d.temp == 70 & d.sweep == 8);
t1_2_70 = d.tinj_1(d.temp == 70 & d.sweep == 9);
t1_3_70 = d.tinj_1(d.temp == 70 & d.sweep == 10);
t1_4_70 = d.tinj_1(d.temp == 70 & d.sweep == 11);

t2_1_70 = d.tinj_2(d.temp == 70 & d.sweep == 8);
t2_2_70 = d.tinj_2(d.temp == 70 & d.sweep == 9);
t2_3_70 = d.tinj_2(d.temp == 70 & d.sweep == 10);
t2_4_70 = d.tinj_2(d.temp == 70 & d.sweep == 11);

t1_1_75 = d.tinj_1(d.temp == 75 & d.sweep == 12);
t1_2_75 = d.tinj_1(d.temp == 75 & d.sweep == 13);

t2_1_75 = d.tinj_2(d.temp == 75 & d.sweep == 12);
t2_2_75 = d.tinj_2(d.temp == 75 & d.sweep == 13);

%%
close all

RPM = 1500:250:3750;

lambdaHigh = (ones(1,length(RPM))*1.1);
lambdaLow = (ones(1,length(RPM))*0.9);

figure(1)
patch([RPM,fliplr(RPM)],[lambdaLow,lambdaHigh],[0.9 0.9 0.9])
hold on
%plot(RPM,lambdaLow)
plot(RPM',[...    
    l1_1_60,...
    l1_2_60,...
    l1_3_60,...
    ],'LineWidth',2)
hold off
title('\lambda gear 1 @ 60^oC')
legend('Desired \lambda','Sweep 1','Sweep 2','Sweep 3','Location','EastOutside')
set(gca,'FontSize',15)
ylim([0.70 1.6])
xlim([1500 3750])
xlabel('RPM')
ylabel('\lambda')

xticks(1500:250:4000)
xticklabels(["1500"," ","2000"," ","2500","","3000"," ","3500"," ","4000"])
grid()
a = 9;
set(gcf,'PaperUnits','centimeters','PaperPosition',[0 0 a*2.3309 a])
saveas(gcf,'figurer til bachelor/lambda1_60_LutTest.eps', 'epsc');

figure(2)
patch([RPM,fliplr(RPM)],[lambdaLow,lambdaHigh],[0.9 0.9 0.9])
hold on
%plot(RPM,lambdaLow)
plot(RPM',[...    
    l2_1_60,...
    l2_2_60,...
    l2_3_60,...
    ],'LineWidth',2)
hold off
title('\lambda gear 2 @ 60^oC')
legend('Desired \lambda','Sweep 1','Sweep 2','Sweep 3','Location','EastOutside')
set(gca,'FontSize',15)
ylim([0.70 1.6])
xlim([1500 3750])
xlabel('RPM')
ylabel('\lambda')

xticks(1500:250:4000)
xticklabels(["1500"," ","2000"," ","2500","","3000"," ","3500"," ","4000"])
grid()
set(gcf,'PaperUnits','centimeters','PaperPosition',[0 0 a*2.3309 a])
saveas(gcf,'figurer til bachelor/lambda2_60_LutTest.eps', 'epsc');

figure(3)
patch([RPM,fliplr(RPM)],[lambdaLow,lambdaHigh],[0.9 0.9 0.9])
hold on
%plot(RPM,lambdaLow)
plot(RPM',[...    
    l1_1_65,...
    l1_2_65,...
    l1_3_65,...
    l1_4_65,...
    ],'LineWidth',2)
hold off
title('\lambda gear 1 @ 65^oC')
legend('Desired \lambda','Sweep 1','Sweep 2','Sweep 3','Sweep 4','Location','EastOutside')
set(gca,'FontSize',15)
ylim([0.70 1.6])
xlim([1500 3750])
xlabel('RPM')
ylabel('\lambda')

xticks(1500:250:4000)
xticklabels(["1500"," ","2000"," ","2500","","3000"," ","3500"," ","4000"])
grid()
set(gcf,'PaperUnits','centimeters','PaperPosition',[0 0 a*2.3309 a])
saveas(gcf,'figurer til bachelor/lambda1_65_LutTest.eps', 'epsc');

figure(4)
patch([RPM,fliplr(RPM)],[lambdaLow,lambdaHigh],[0.9 0.9 0.9])
hold on
%plot(RPM,lambdaLow)
plot(RPM',[...    
    l2_1_65,...
    l2_2_65,...
    l2_3_65,...
    l2_4_65,...
    ],'LineWidth',2)
hold off
title('\lambda gear 2 @ 65^oC')
legend('Desired \lambda','Sweep 1','Sweep 2','Sweep 3','Sweep 4','Location','EastOutside')
set(gca,'FontSize',15)
ylim([0.70 1.6])
xlim([1500 3750])
xlabel('RPM')
ylabel('\lambda')

xticks(1500:250:4000)
xticklabels(["1500"," ","2000"," ","2500","","3000"," ","3500"," ","4000"])
grid()
set(gcf,'PaperUnits','centimeters','PaperPosition',[0 0 a*2.3309 a])
saveas(gcf,'figurer til bachelor/lambda2_65_LutTest.eps', 'epsc');

figure(5)
patch([RPM,fliplr(RPM)],[lambdaLow,lambdaHigh],[0.9 0.9 0.9])
hold on
%plot(RPM,lambdaLow)
plot(RPM',[...    
    l1_1_70,...
    l1_2_70,...
    l1_3_70,...
    l1_4_70,...
    ],'LineWidth',2)
hold off
title('\lambda gear 1 @ 70^oC')
legend('Desired \lambda','Sweep 1','Sweep 2','Sweep 3','Sweep 4','Location','EastOutside')
set(gca,'FontSize',15)
ylim([0.70 1.6])
xlim([1500 3750])
xlabel('RPM')
ylabel('\lambda')

xticks(1500:250:4000)
xticklabels(["1500","","2000","","2500","","3000","","3500","","4000"])
grid()
set(gcf,'PaperUnits','centimeters','PaperPosition',[0 0 a*2.3309 a])
saveas(gcf,'figurer til bachelor/lambda1_70_LutTest.eps', 'epsc');

figure(6)
patch([RPM,fliplr(RPM)],[lambdaLow,lambdaHigh],[0.9 0.9 0.9])
hold on
%plot(RPM,lambdaLow)
plot(RPM',[...    
    l2_1_70,...
    l2_2_70,...
    l2_3_70,...
    l2_4_70,...
    ],'LineWidth',2)
hold off
title('\lambda gear 2 @ 70^oC')
legend('Desired \lambda','Sweep 1','Sweep 2','Sweep 3','Sweep 4','Location','EastOutside')
set(gca,'FontSize',15)
ylim([0.70 1.6])
xlim([1500 3750])
xlabel('RPM')
ylabel('\lambda')
%
xticks(1500:250:4000)
xticklabels(["1500"," ","2000"," ","2500","","3000"," ","3500"," ","4000"])
grid()
set(gcf,'PaperUnits','centimeters','PaperPosition',[0 0 a*2.3309 a])
saveas(gcf,'figurer til bachelor/lambda2_70_LutTest.eps', 'epsc');

%%


