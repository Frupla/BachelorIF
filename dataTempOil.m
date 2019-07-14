%% Kode som laver plots efter vi tunede efter olie temperatur
close all

d = readtable('actualRun8.csv');


d.lambda_1 = oldLambda2New(d.lambda_1);

d.lambda_2 = oldLambda2New(d.lambda_2);

d.lambda_1(isnan(d.lambda_1)) = 0;
d.lambda_2(isnan(d.lambda_2)) = 0;
 
d.oil_temp1(isnan(d.oil_temp1)) = 0;
d.oil_temp2(isnan(d.oil_temp2)) = 0;
   
d.water_temp1(isnan(d.water_temp1)) = 0;
d.water_temp2(isnan(d.water_temp2)) = 0;
   
d.air_temp1(isnan(d.air_temp1)) = 0;
d.air_temp2(isnan(d.air_temp2)) = 0;



t1_1 = d.t_inj_1(d.sweep==1);
t2_1 = d.t_inj_1(d.sweep==2);
t3_1= d.t_inj_1(d.sweep==3);
t4_1 = d.t_inj_1(d.sweep==4);
t5_1 = d.t_inj_1(d.sweep==5);
t6_1 = d.t_inj_1(d.sweep==6);
t7_1 = d.t_inj_1(d.sweep==7);
t8_1 = d.t_inj_1(d.sweep==8);
t9_1 = d.t_inj_1(d.sweep==9);
t10_1 = d.t_inj_1(d.sweep==10);
t11_1 = d.t_inj_1(d.sweep==11);
t12_1 = d.t_inj_1(d.sweep==12);
t13_1 = d.t_inj_1(d.sweep==13);
t14_1 = d.t_inj_1(d.sweep==14);
t15_1 = d.t_inj_1(d.sweep==15);
t16_1 = d.t_inj_1(d.sweep==16);
t17_1 = d.t_inj_1(d.sweep==17);
t18_1 = d.t_inj_1(d.sweep==18);
t19_1 = d.t_inj_1(d.sweep==19);
t20_1 = d.t_inj_1(d.sweep==20);
t21_1 = d.t_inj_1(d.sweep==21);

t1_2 = d.t_inj_2(d.sweep==1);
t2_2 = d.t_inj_2(d.sweep==2);
t3_2 = d.t_inj_2(d.sweep==3);
t4_2 = d.t_inj_2(d.sweep==4);
t5_2 = d.t_inj_2(d.sweep==5);
t6_2 = d.t_inj_2(d.sweep==6);
t7_2 = d.t_inj_2(d.sweep==7);
t8_2 = d.t_inj_2(d.sweep==8);
t9_2 = d.t_inj_2(d.sweep==9);
t10_2 = d.t_inj_2(d.sweep==10);
t11_2 = d.t_inj_2(d.sweep==11);
t12_2 = d.t_inj_2(d.sweep==12);
t13_2 = d.t_inj_2(d.sweep==13);
t14_2 = d.t_inj_2(d.sweep==14);
t15_2 = d.t_inj_2(d.sweep==15);
t16_2 = d.t_inj_2(d.sweep==16);
t17_2 = d.t_inj_2(d.sweep==17);
t18_2 = d.t_inj_2(d.sweep==18);
t19_2 = d.t_inj_2(d.sweep==19);
t20_2 = d.t_inj_2(d.sweep==20);
t21_2 = d.t_inj_2(d.sweep==21);

l1_1 = d.lambda_1(d.sweep==1);
l2_1 = d.lambda_1(d.sweep==2);
l3_1 = d.lambda_1(d.sweep==3);
l4_1 = d.lambda_1(d.sweep==4);
l5_1 = d.lambda_1(d.sweep==5);
l6_1 = d.lambda_1(d.sweep==6);
l7_1 = d.lambda_1(d.sweep==7);
l8_1 = d.lambda_1(d.sweep==8);
l9_1 = d.lambda_1(d.sweep==9);
l10_1 = d.lambda_1(d.sweep==10);
l11_1 = d.lambda_1(d.sweep==11);
l12_1 = d.lambda_1(d.sweep==12);
l13_1 = d.lambda_1(d.sweep==13);
l14_1 = d.lambda_1(d.sweep==14);
l15_1 = d.lambda_1(d.sweep==15);
l16_1 = d.lambda_1(d.sweep==16);
l17_1 = d.lambda_1(d.sweep==17);
l18_1 = d.lambda_1(d.sweep==18);
l19_1 = d.lambda_1(d.sweep==19);
l20_1 = d.lambda_1(d.sweep==20);
l21_1 = d.lambda_1(d.sweep==21);

l1_2 = d.lambda_2(d.sweep==1);
l2_2 = d.lambda_2(d.sweep==2);
l3_2 = d.lambda_2(d.sweep==3);
l4_2 = d.lambda_2(d.sweep==4);
l5_2 = d.lambda_2(d.sweep==5);
l6_2 = d.lambda_2(d.sweep==6);
l7_2 = d.lambda_2(d.sweep==7);
l8_2 = d.lambda_2(d.sweep==8);
l9_2 = d.lambda_2(d.sweep==9);
l10_2 = d.lambda_2(d.sweep==10);
l11_2 = d.lambda_2(d.sweep==11);
l12_2 = d.lambda_2(d.sweep==12);
l13_2 = d.lambda_2(d.sweep==13);
l14_2 = d.lambda_2(d.sweep==14);
l15_2 = d.lambda_2(d.sweep==15);
l16_2 = d.lambda_2(d.sweep==16);
l17_2 = d.lambda_2(d.sweep==17);
l18_2 = d.lambda_2(d.sweep==18);
l19_2 = d.lambda_2(d.sweep==19);
l20_2 = d.lambda_2(d.sweep==20);
l21_2 = d.lambda_2(d.sweep==21);

% figure(1)
% plot([d.water_temp1,d.oil_temp1])
% grid()

RPM = 0:250:6000;

lambdaHigh = oldLambda2New(ones(1,25)*1.1);
lambdaLow = oldLambda2New(ones(1,25)*0.9);

figure(1)
patch([RPM,fliplr(RPM)],[lambdaLow,lambdaHigh],[0.9 0.9 0.9])
hold on
%plot(RPM,lambdaLow)
plot(RPM,[...    
    l1_1,...
    l2_1,...
    l4_1,...
    l6_1,...
    l8_1,...
    l10_1,...
    ],'LineWidth',2)
hold off
title('\lambda gear 1')
legend('Desired \lambda','Sweep 1','Sweep 2','Sweep 4','Sweep 6','Sweep 8','Sweep 10','Location','EastOutside')
set(gca,'FontSize',15)
ylim([0.70 1.6])
xlim([1500 4000])
xlabel('RPM')
ylabel('\lambda')
xticks(0:500:6000)
grid()
saveas(gcf,'figurer til bachelor/lambda1OilTemp.eps','epsc')


figure(2)
plot(RPM,[...    
    t1_1,...
    t2_1,...
    t4_1,...
    t6_1,...
    t8_1,...
    t10_1,...
    ],'LineWidth',2)
title('Injection times gear 1')
legend('Sweep 1','Sweep 2','Sweep 4','Sweep 6','Sweep 8','Sweep 10','Location','EastOutside')
set(gca,'FontSize',15)
ylim([5000 6000])
xlim([1500 4000])
xlabel('RPM')
ylabel('Injection time [µs]')
xticks(0:500:6000)
grid()
saveas(gcf,'figurer til bachelor/injection1OilTemp.eps','epsc')


figure(3)
patch([RPM,fliplr(RPM)],[lambdaLow,lambdaHigh],[0.9 0.9 0.9])
hold on
%plot(RPM,lambdaLow)
plot(RPM,[...    
    l1_2,...
    l2_2,...    
    l4_2,...
    l6_2,...    
    l8_2,...
    l10_2,...
    ],'LineWidth',2)
hold off
title('\lambda gear 2')
legend('Desired \lambda','Sweep 1','Sweep 2','Sweep 4','Sweep 6','Sweep 8','Sweep 10','Location','EastOutside')
set(gca,'FontSize',15)
ylim([0.70 1.6])
xlim([1500 4000])
xlabel('RPM')
ylabel('\lambda')
xticks(0:500:6000)
grid()
saveas(gcf,'figurer til bachelor/lambda2OilTemp.eps','epsc')

figure(4)
plot(RPM,[...    
    t1_2,...
    t2_2,...
    t4_2,...
    t6_2,...
    t8_2,...
    t10_2,...
    ],'LineWidth',2)
title('Injection times gear 2')
legend('Sweep 1','Sweep 2','Sweep 4','Sweep 6','Sweep 8','Sweep 10','Location','EastOutside')
set(gca,'FontSize',15)
ylim([5000 6000])
xlim([1500 4000])
xlabel('RPM')
ylabel('Injection time [µs]')
xticks(0:500:6000)
grid()
saveas(gcf,'figurer til bachelor/injection2OilTemp.eps','epsc')


%%
figure(10)
plot(d.time_ms/60000,[d.oil_temp1/max(d.oil_temp1)+1,d.water_temp1/max(d.water_temp1)])

