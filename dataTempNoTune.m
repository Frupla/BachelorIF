%% Kode som sammenligner vand og oile hvor vi ikke tuner
close all

d = readtable('actualRun15.csv');
q = readtable('actualRun14.csv');

d.lambda_1(isnan(d.lambda_1)) = 0;
d.lambda_2(isnan(d.lambda_2)) = 0;
 
d.oil_temp1(isnan(d.oil_temp1)) = 0;
d.oil_temp2(isnan(d.oil_temp2)) = 0;
   
d.water_temp1(isnan(d.water_temp1)) = 0;
d.water_temp2(isnan(d.water_temp2)) = 0;
   
d.air_temp1(isnan(d.air_temp1)) = 0;
d.air_temp2(isnan(d.air_temp2)) = 0;

q.lambda_1(isnan(d.lambda_1)) = 0;
q.lambda_2(isnan(d.lambda_2)) = 0;
 
q.oil_temp1(isnan(d.oil_temp1)) = 0;
q.oil_temp2(isnan(d.oil_temp2)) = 0;
   
q.water_temp1(isnan(d.water_temp1)) = 0;
q.water_temp2(isnan(d.water_temp2)) = 0;
  
q.air_temp1(isnan(d.air_temp1)) = 0;
q.air_temp2(isnan(d.air_temp2)) = 0;


t1_1 = d.t_inj_1(d.sweep==1);
t2_1 = d.t_inj_1(d.sweep==2);
t3_1 = d.t_inj_1(d.sweep==3);
t4_1 = d.t_inj_1(d.sweep==4);
t5_1 = d.t_inj_1(d.sweep==5);
t6_1 = d.t_inj_1(d.sweep==6);
t7_1 = d.t_inj_1(d.sweep==7);
t8_1 = d.t_inj_1(d.sweep==8);
t9_1 = d.t_inj_1(d.sweep==9);
t10_1 = d.t_inj_1(d.sweep==10);

T1_1 = q.t_inj_1(q.sweep==1);
T2_1 = q.t_inj_1(q.sweep==2);
T3_1 = q.t_inj_1(q.sweep==3);
T4_1 = q.t_inj_1(q.sweep==4);
T5_1 = q.t_inj_1(q.sweep==5);
T6_1 = q.t_inj_1(q.sweep==6);
T7_1 = q.t_inj_1(q.sweep==7);
T8_1 = q.t_inj_1(q.sweep==8);
T9_1 = q.t_inj_1(q.sweep==9);
T10_1 = q.t_inj_1(q.sweep==10);
T11_1 = q.t_inj_1(q.sweep==11);
T12_1 = q.t_inj_1(q.sweep==12);
T13_1 = q.t_inj_1(q.sweep==13);


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

T1_2 = q.t_inj_2(q.sweep==1);
T2_2 = q.t_inj_2(q.sweep==2);
T3_2 = q.t_inj_2(q.sweep==3);
T4_2 = q.t_inj_2(q.sweep==4);
T5_2 = q.t_inj_2(q.sweep==5);
T6_2 = q.t_inj_2(q.sweep==6);
T7_2 = q.t_inj_2(q.sweep==7);
T8_2 = q.t_inj_2(q.sweep==8);
T9_2 = q.t_inj_2(q.sweep==9);
T10_2 = q.t_inj_2(q.sweep==10);
T11_2 = q.t_inj_2(q.sweep==11);
T12_2 = q.t_inj_2(q.sweep==12);
T13_2 = q.t_inj_2(q.sweep==13);

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

L1_1 = q.lambda_1(q.sweep==1);
L2_1 = q.lambda_1(q.sweep==2);
L3_1 = q.lambda_1(q.sweep==3);
L4_1 = q.lambda_1(q.sweep==4);
L5_1 = q.lambda_1(q.sweep==5);
L6_1 = q.lambda_1(q.sweep==6);
L7_1 = q.lambda_1(q.sweep==7);
L8_1 = q.lambda_1(q.sweep==8);
L9_1 = q.lambda_1(q.sweep==9);
L10_1 = q.lambda_1(q.sweep==10);
L11_1 = q.lambda_1(q.sweep==11);
L12_1 = q.lambda_1(q.sweep==12);
L13_1 = q.lambda_1(q.sweep==13);

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


L1_2 = q.lambda_2(q.sweep==1);
L2_2 = q.lambda_2(q.sweep==2);
L3_2 = q.lambda_2(q.sweep==3);
L4_2 = q.lambda_2(q.sweep==4);
L5_2 = q.lambda_2(q.sweep==5);
L6_2 = q.lambda_2(q.sweep==6);
L7_2 = q.lambda_2(q.sweep==7);
L8_2 = q.lambda_2(q.sweep==8);
L9_2 = q.lambda_2(q.sweep==9);
L10_2 = q.lambda_2(q.sweep==10);
L11_2 = q.lambda_2(q.sweep==11);
L12_2 = q.lambda_2(q.sweep==12);
L13_2 = q.lambda_2(q.sweep==13);

% figure(1)
% plot([d.water_temp1,d.oil_temp1])
% grid()

RPM = 1500:250:4000;

lambdaHigh = (ones(1,11)*1.1);
lambdaLow = (ones(1,11)*0.9);

figure(1)
patch([RPM,fliplr(RPM)],[lambdaLow,lambdaHigh],[0.9 0.9 0.9])
hold on
%plot(RPM,lambdaLow)
plot(RPM,[...    
    l1_1,...
    l3_1,...
    l5_1,...
    l7_1,...
    l9_1,...
    l10_1,...
    ],'LineWidth',2)
hold off
title('\lambda gear 1, with water temperature kept constant')
legend('Desired \lambda','Sweep 1','Sweep 3','Sweep 5','Sweep 7','Sweep 9','Sweep 10','Location','EastOutside')
set(gca,'FontSize',15)
ylim([0.70 1.6])
xlim([1500 4000])
xlabel('RPM')
ylabel('\lambda')
 xticks(0:500:6000)
grid()
saveas(gcf,'figurer til bachelor/lambda1NoTuneWater.eps','epsc')



figure(2)
patch([RPM,fliplr(RPM)],[lambdaLow,lambdaHigh],[0.9 0.9 0.9])
hold on
plot(RPM,[...    
    L1_1,...
    L3_1,...
    L5_1,...
    L7_1,...
    L9_1,...
    L10_1,...
    ],'LineWidth',2)
hold off
title('\lambda gear 1, with oil temperature kept constant')
legend('Desired \lambda','Sweep 1','Sweep 3','Sweep 5','Sweep 7','Sweep 9','Sweep 10','Location','EastOutside')
set(gca,'FontSize',15)
ylim([0.70 1.6])
xlim([1500 4000])
xlabel('RPM')
ylabel('\lambda')
 xticks(0:500:6000)
grid()
saveas(gcf,'figurer til bachelor/lambda1NoTuneOil.eps','epsc')

figure(3)
patch([RPM,fliplr(RPM)],[lambdaLow,lambdaHigh],[0.9 0.9 0.9])
hold on
%plot(RPM,lambdaLow)
plot(RPM,[...    
    l1_2,...    
    l3_2,...
    l5_2,...
    l7_2,...    
    l9_2,...
    l10_2,...   
    ],'LineWidth',2)
hold off
title('\lambda gear 2, with water temperature kept constant')
legend('Desired \lambda','Sweep 1','Sweep 3','Sweep 5','Sweep 7','Sweep 9','Sweep 10','Location','EastOutside')
set(gca,'FontSize',15)
ylim([0.70 1.6])
xlim([1500 4000])
xlabel('RPM')
ylabel('\lambda')
 xticks(0:500:6000)
grid()
saveas(gcf,'figurer til bachelor/lambda2NoTuneWater.eps','epsc')

figure(4)
patch([RPM,fliplr(RPM)],[lambdaLow,lambdaHigh],[0.9 0.9 0.9])
hold on
plot(RPM,[...    
    L1_2,...
    L3_2,...
    L5_2,...
    L7_2,...
    L9_2,...
    L10_2,...
    ],'LineWidth',2)
hold off
title('\lambda gear 2, with oil temperature kept constant')
legend('Desired \lambda','Sweep 1','Sweep 3','Sweep 5','Sweep 7','Sweep 9','Sweep 10','Location','EastOutside')
set(gca,'FontSize',15)
ylim([0.7 1.6])
xlim([1500 4000])
xlabel('RPM')
ylabel('\lambda')
xticks(0:500:6000)
grid()
saveas(gcf,'figurer til bachelor/lambda2NoTuneOil.eps','epsc')

%%
figure(10)
plot(d.time_ms,[d.oil_temp2,d.water_temp2],'o')

figure(11)
plot(q.time_ms,[q.oil_temp2,q.water_temp2],'o')

x = ones(max(d.sweep),1);
y = ones(max(q.sweep),1);

for i = 1:max(d.sweep)-1
    x(i) = timeBetweenSweeps(d,i+1,i)/1000;
end

for i = 1:max(q.sweep)-1
    y(i) = timeBetweenSweeps(q,i+1,i)/1000;
end

%%

figure(10)
plot(d.time_ms/60000,d.lambda_1)

figure(11)
plot(q.time_ms/60000,q.lambda_1)
