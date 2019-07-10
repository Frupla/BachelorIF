close all
clear
clc

[r1,r2] = processSweep('actualRun15.csv');

%%
q = readtable('2 juli 3/eveningOnTrack - 25.csv');
d = readtable('2 juli 3/eveningOnTrack - 28.csv');

figure(2)
plot(d.RPM(d.Gear == 1),d.Lambda(d.Gear == 1),'o')
title('Lambda, gear 1')
xlim([1500 4000])

figure(3)
plot(d.RPM(d.Gear == 2),d.Lambda(d.Gear == 2),'o')
title('Lambda, gear 2')
xlim([1500 4000])

%%
figure(4)
plot(d.OnTime__ms_,d.Fuel_consumption__km_l_)
grid()

%%

rho = 745;

figure(5)
plot(d.OnTime__ms_,d.Fuel_consumed__g_/rho)
grid()

figure(6)
plot(d.OnTime__ms_,d.Water_temperature__C_)

Vreal = 44.04219641385897;
Vmeasured = max(d.Fuel_consumed__g_/rho);

correction = Vreal/Vmeasured;

max(d.Distance__m_/1000)/(Vmeasured)

%%

figure(4)
plot([d.Lambda(d.burning==1)])

    

%figure(3)
%plot(q.RPM,q.Lambda,'o')
%xlim([1500 4000])

%%

d = readtable('5 juli/DWC - 69.csv');

figure(2)
plot(d.RPM(d.Gear == 1),d.Lambda(d.Gear == 1),'o')
title('Lambda, gear 1')
xlim([1500 4000])

figure(3)
plot(d.RPM(d.Gear == 2),d.Lambda(d.Gear == 2),'o')
title('Lambda, gear 2')
xlim([1500 4000])

figure(4)
plot(d.Lambda(d.burning == 1))
hold on
plot(d.RPM(d.burning == 1)/1000)
hold off

%%
figure(1)
scatter3(d.RPM,(d.temp+12)*5,d.lambda_1, ones(length(d.sweep),1)*20,d.sweep)
xlabel('RPM')
ylabel('Water temp')
zlabel('lambda')
xlim([1750 4000])

figure(2)
scatter3(d.RPM,(d.temp+12)*5,d.lambda_2, ones(length(d.sweep),1)*20,d.sweep)
xlabel('RPM')
ylabel('Water temp')
zlabel('lambda')
xlim([2000 4000])

%%
t1 = zeros(7,6);
t2 = zeros(7,6);

for i = 1:7
    for j = 0:6
        rpm = (i + 6) * 250;
        
        
        [t1(i,j+1),t2(i,j+1)] = calcInj(d,rpm,j);
    end
end

figure(1)
mesh(60:5:90,1750:250:3250,t1)


figure(2)
mesh(60:5:90,1750:250:3250,t2)






%%
for i = 0:d.temp(end)
   figure(i + 1)
   gscatter(d.RPM(d.temp == i),d.lambda_1(d.temp == i),d.sweep(d.temp==i))
   hold on
   plot(d.RPM(d.temp == i), [ones(length(d.RPM(d.temp == i)),1)*1.4,ones(length(d.RPM(d.temp == i)),1)*1.2])
   hold off
   title("Tuning at " + (i + 12)*5)
   legend('Location','EastOutSide')
end
%%

% [avgLambda1,n] = meanBySweep(d.lambda_1);
% avgLambda2 = meanBySweep(d.lambda_2);
% avgOil1 = meanBySweep(d.oil_temp1);
% avgOil2 = meanBySweep(d.oil_temp2);
% avgAir1 = meanBySweep(d.air_temp1);
% avgAir2 = meanBySweep(d.air_temp2);
% 
% 
% figure(200)
% yyaxis right
% plot(n,[avgLambda1;avgLambda2],'r')
% yyaxis left
% hold on
% plot(n,[avgOil1;avgOil2],'b')
% plot(n,[avgAir1;avgAir2],'g')
% hold off

%%
figure(300)
scatter(d.RPM,d.lambda_1);
hold on
scatter(d.RPM,d.lambda_2);
hold off


%% Kode som laver plots før vi tunede efter temperatur
close all

d = readtable('actualRun5.csv');



d.lambda_1 = oldLambda2New(d.lambda_1);

d.lambda_2 = oldLambda2New(d.lambda_2);

d.lambda_1(isnan(d.lambda_1)) = 0;
d.lambda_2(isnan(d.lambda_2)) = 0;
 
% d.oil_temp1(isnan(d.oil_temp1)) = 0;
% d.oil_temp2(isnan(d.oil_temp2)) = 0;
%   
% d.water_temp1(isnan(d.water_temp1)) = 0;
% d.water_temp2(isnan(d.water_temp2)) = 0;
%   
% d.air_temp1(isnan(d.air_temp1)) = 0;
% d.air_temp2(isnan(d.air_temp2)) = 0;



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


% figure(1)
% plot([d.water_temp1,d.oil_temp1])
% grid()

RPM = 0:250:6000;

lambdaHigh = oldLambda2New(ones(1,25)*1.1);
lambdaLow = oldLambda2New(ones(1,25)*0.9);

figure(3)
subplot(1,2,1)
patch([RPM,fliplr(RPM)],[lambdaLow,lambdaHigh],[0.9 0.9 0.9])
hold on
%plot(RPM,lambdaLow)
plot(RPM,[...    
    l1_1,...
    l4_1,...
    l6_1,...
    l7_1,...
    l8_1,...
    l9_1,...
    ],'LineWidth',2)
hold off
title('Lambda gear 1')
legend('Desired lambda','Sweep 1','Sweep 4','Sweep 6','Sweep 7','Sweep 8','Sweep 9','Location','best')
ylim([0.70 1.6])
xlim([1500 4000])
xlabel('RPM')
ylabel('\lambda')
xticks(0:250:6000)
grid()
subplot(1,2,2)
plot(RPM,[...    
    t1_1,...
    t4_1,...
    t6_1,...
    t7_1,...
    t8_1,...
    t9_1,...
    ],'LineWidth',2)
title('Injection times gear 1')
legend('Sweep 1','Sweep 4','Sweep 6','Sweep 7','Sweep 8','Sweep 9','Location','best')
ylim([3000 7000])
xlim([1500 4000])
xlabel('RPM')
ylabel('Injection time [µs]')
xticks(0:250:6000)
grid()

figure(4)
subplot(1,2,1)
patch([RPM,fliplr(RPM)],[lambdaLow,lambdaHigh],[0.9 0.9 0.9])
hold on
%plot(RPM,lambdaLow)
plot(RPM,[...    
    l1_2,...
    l4_2,...    
    l6_2,...
    l7_2,...    
    l8_2,...
    l9_2,...
    ],'LineWidth',2)
hold off
title('Lambda gear 2')
legend('Desired lambda','Sweep 1','Sweep 4','Sweep 6','Sweep 7','Sweep 8','Sweep 9','Location','best')
ylim([0.70 1.6])
xlim([1500 4000])
xlabel('RPM')
ylabel('\lambda')
xticks(0:250:6000)
grid()
subplot(1,2,2)
plot(RPM,[...    
    t1_2,...
    t4_2,...
    t6_2,...
    t7_2,...
    t8_2,...
    t9_2,...
    ],'LineWidth',2)
title('Injection times gear 2')
legend('Sweep 1','Sweep 4','Sweep 6','Sweep 7','Sweep 8','Sweep 9','Location','best')
ylim([3000 7000])
xlim([1500 4000])
xlabel('RPM')
ylabel('Injection time [µs]')
xticks(0:250:6000)
grid()


%%
figure(10)
plot(d.time_ms*10^(-3)/60,d.lambda_1)

%%
figure(100)
plot3(ones(10,1)*60,RPM,[l1(1:10),l1(11:20),l1(21:30),l1(31:40)])
hold on
plot3(ones(10,1)*65,RPM,[l2(1:10),l2(11:20),l2(21:30),l2(31:40),l2(41:50)])
plot3(ones(10,1)*70,RPM,[l3(1:10),l3(11:20),l3(21:30),l3(31:40),l3(41:50)])
plot3(ones(10,1)*75,RPM,[l4(1:10),l4(11:20),l4(21:30)])
hold off

%%

figure(11)
plot(d.RPM(d.sweep == 1),...
[...
    t_inj_1_1,...
    t_inj_1_2,...
    t_inj_1_3,...
    t_inj_1_4,...
    t_inj_1_5,...
],'LineWidth',2)
title('Injection times, Gear 1, sweep 1 - 5')
grid()
legend('1','2','3','4','5')%,'Location','EastOutside')
xlabel('Rotational Speed [RPM]','FontSize',12);
ylabel('Injection length [ms]','FontSize',12);


% figure(12)
% plot(d.RPM(d.sweep == 1),...
% [...
%     t_inj_1_6,...
%     t_inj_1_7,...
%     t_inj_1_8,...
%     t_inj_1_9,...
%     t_inj_1_10,...
% ])
% title('Injection times, Gear 1, sweep 6 - 10')
% grid()
% legend('6','7','8','9','Location','EastOutside')

% figure(13)
% plot(d.RPM(d.sweep == 1),...
% [...
%     t_inj_2_1,...
%     t_inj_2_2,...
%     t_inj_2_3,...
%     t_inj_2_4,...
%     t_inj_2_5,...
% ])
% title('Injection times, Gear 2, sweep 1 - 5')
% grid()
% legend('1','2','3','4','5','Location','EastOutside')

% figure(14)
% plot(d.RPM(d.sweep == 1),...
% [...
%     t_inj_2_6,...
%     t_inj_2_7,...
%     t_inj_2_8,...
%     t_inj_2_9,...
%     t_inj_2_10,...
% ])
% title('Injection times, Gear 2, sweep 6 - 10')
% grid()
% legend('6','7','8','9','10','Location','EastOutside')

%%
lambda_1_1 = d.lambda_1(d.sweep == 1);
lambda_1_2 = d.lambda_1(d.sweep == 2);
lambda_1_3 = d.lambda_1(d.sweep == 3);
lambda_1_4 = d.lambda_1(d.sweep == 4);
lambda_1_5 = d.lambda_1(d.sweep == 5);
% lambqa_1_1 = q.lambda_1(q.sweep == 1);
% lambqa_1_2 = q.lambda_1(q.sweep == 2);
% lambqa_1_3 = q.lambda_1(q.sweep == 3);
% lambqa_1_4 = q.lambda_1(q.sweep == 4);
% lambqa_1_5 = q.lambda_1(q.sweep == 5);

%%
lambda_1_6 = d.lambda_1(d.sweep == 6);
lambda_1_7 = d.lambda_1(d.sweep == 7);
lambda_1_8 = d.lambda_1(d.sweep == 8);
lambda_1_9 = d.lambda_1(d.sweep == 9);
lambda_1_10 = d.lambda_1(d.sweep == 10);

lambda_2_1 = d.lambda_2(d.sweep == 1);
lambda_2_2 = d.lambda_2(d.sweep == 2);
lambda_2_3 = d.lambda_2(d.sweep == 3);
lambda_2_4 = d.lambda_2(d.sweep == 4);
lambda_2_5 = d.lambda_2(d.sweep == 5);
lambda_2_6 = d.lambda_2(d.sweep == 6);
lambda_2_7 = d.lambda_2(d.sweep == 7);
lambda_2_8 = d.lambda_2(d.sweep == 8);
lambda_2_9 = d.lambda_2(d.sweep == 9);
lambda_2_10= d.lambda_2(d.sweep == 10);
 
figure(1)
plot(d.RPM(d.sweep == 1),...
[...
    lambda_1_1,...
    lambda_1_2,...
    lambda_1_3,...
    lambda_1_4,...
    lambda_1_5,...
],'LineWidth',2)
ylim([0.8 1.3])
title('Lambda, Gear 1, sweep 1 - 5, with water at 85^{o}C')
grid()
legend('1','2','3','4','5')%,'Location','Best')
xlabel('Rotational Speed [RPM]','FontSize',12);
ylabel('Air/fuel ratio [\lambda]','FontSize',12);

% figure(2)
% plot(q.RPM(q.sweep == 1),...
% [...
%     lambqa_1_1,...
%     lambqa_1_2,...
%     lambqa_1_3,...
%     lambqa_1_4,...
%     lambqa_1_5,...
% ],'LineWidth',2)
% ylim([0.8 1.3])
% title('Lambda, Gear 1, sweep 1 - 5, with oil at 50^{o}C')
% grid()
% legend('1','2','3','4','5')%,'Location','Best')
% xlabel('Rotational Speed [RPM]','FontSize',12);
% ylabel('Air/fuel ratio [\lambda]','FontSize',12);


% figure(2)
% plot(d.RPM(d.sweep == 1),...
% [...
%     d.water_temp1(d.sweep == 1),...
%     d.water_temp1(d.sweep == 2),...
%     d.water_temp1(d.sweep == 3),...
%     d.water_temp1(d.sweep == 4),...
%     d.water_temp1(d.sweep == 5),...
%     d.water_temp1(d.sweep == 6),...
%     d.water_temp1(d.sweep == 7),...
% ])
% title('Oil temp, Gear 1, sweep 1 - 7')
% grid()
% legend('1','2','3','4','5','6','7','Location','EastOutside')
% 


% figure(2)
% plot(d.RPM(d.sweep == 1),...
% [...
%     lambda_1_6,...
%     lambda_1_7,...
%     lambda_1_8,...
%     lambda_1_9,...
%     lambda_1_10,...
%     
%surf(temp,RPM,[l1(11:20),l2(11:20),l3(11:20),l4(11:20)]),...
%     lambda09...
% ])
% title('Lambda, Gear 1, sweep 6 - 10')
% grid()
% legend('6','7','8','9','10','Location','EastOutside')
 
% figure(3)
% plot(d.RPM(d.sweep == 1),...
% [...
%     lambda_2_1,...
%     lambda_2_2,...
%     lambda_2_3,...
%     lambda_2_4,...
%     lambda_2_5,...
%     lambda_2_6,...
%     lambda_2_7,...
% ])
% title('Lambda, Gear 2, sweep 1 - 5')
% grid()
% legend('1','2','3','4','5','6','7','Location','EastOutside')
%  
% figure(4)
% plot(d.RPM(d.sweep == 1),...
% [...
%     lambda_2_6,...
%     lambda_2_7,...
%     lambda_2_8,...
%     lambda_2_9,...
%     lambda_2_10,...
%     lambda11,...
%     lambda09...
% ])
% title('Lambda, Gear 2, sweep 6 - 10')
% grid()
% legend('6','7','8','9','10','Location','EastOutside')



%%

[a1,l1] = layItOnMe(d,1,2);
[a2,l2] = layItOnMe(d,1,3);
[a3,l3] = layItOnMe(d,1,4);
[a4,l4] = layItOnMe(d,1,5);
[a5,l5] = layItOnMe(d,1,6);
[a6,l6] = layItOnMe(d,1,7);
[a7,l7] = layItOnMe(d,2,3);
[a8,l8] = layItOnMe(d,2,4);
[a9,l9] = layItOnMe(d,2,5);
[a10,l10] = layItOnMe(d,2,6);
[a11,l11] = layItOnMe(d,2,7);

[a12,l12] = layItOnMe(d,3,4);
[a13,l13] = layItOnMe(d,3,5);
[a14,l14] = layItOnMe(d,3,6);
[a15,l15] = layItOnMe(d,3,7);

[a16,l16] = layItOnMe(d,4,5);
[a17,l17] = layItOnMe(d,4,6);
[a18,l18] = layItOnMe(d,4,7);

[a19,l19] = layItOnMe(d,5,6);
[a20,l20] = layItOnMe(d,5,7);

[a21,l21] = layItOnMe(d,6,7);


plotCorrelations(a1,1,l1)
% plotCorrelations(a2,2,l2)
% plotCorrelations(a4,4,l4)
% plotCorrelations(a5,5,l5)
% plotCorrelations(a6,6,l6)
plotCorrelations(a7,7,l7)
% plotCorrelations(a9,9,l9)
% plotCorrelations(a10,11,l11)
plotCorrelations(a13,13,l13)
% plotCorrelations(a14,14,l14)
% plotCorrelations(a15,15,l15)
plotCorrelations(a19,19,l19)
% plotCorrelations(a20,20,l20)
plotCorrelations(a21,21,l21)

%%

x2 = numberMakesMeFeelGood(a1,a7,a13,a19,a21,2)';
x3 = numberMakesMeFeelGood(a1,a7,a13,a19,a21,3)';
x4 = numberMakesMeFeelGood(a1,a7,a13,a19,a21,4)';
x5 = numberMakesMeFeelGood(a1,a7,a13,a19,a21,5)';
x6 = numberMakesMeFeelGood(a1,a7,a13,a19,a21,6)';
x7 = numberMakesMeFeelGood(a1,a7,a13,a19,a21,7)';
x8 = numberMakesMeFeelGood(a1,a7,a13,a19,a21,8)';
x9 = numberMakesMeFeelGood(a1,a7,a13,a19,a21,9)';
x10 = numberMakesMeFeelGood(a1,a7,a13,a19,a21,10)';
x11 = numberMakesMeFeelGood(a1,a7,a13,a19,a21,11)';


%%
speedAndRPM(1)
speedAndRPM(2)
speedAndRPM(3)
speedAndRPM(4)
speedAndRPM(5)
speedAndRPM(6)
speedAndRPM(7)

%%
speedAndRPM('2019-06-19 15-32 ECU Log.csv',1)
speedVsRPM('2019-06-19 15-32 ECU Log.csv',1)
%%

d = readtable('2019-06-19 15-36 ECU Log - 1.csv');

figure(1)
plot(d.Speed_km_h_,d.RPM,'o')

figure(2)
plot(d.OnTime_ms_,[100*d.Speed_km_h_,d.RPM],'o')




%%
csvwrite('x2.csv',x2);
csvwrite('x3.csv',x3);
csvwrite('x4.csv',x4);
csvwrite('x5.csv',x5);
csvwrite('x6.csv',x6);
csvwrite('x7.csv',x7);
csvwrite('x8.csv',x8);
csvwrite('x9.csv',x9);
csvwrite('x10.csv',x10);
csvwrite('x11.csv',x11);

%%
numberOfSweeps = d.sweep(end);
n = length(d.lambda_1(d.sweep == 1));

ml = zeros(numberOfSweeps,2);
mw = zeros(numberOfSweeps,2);

for i = 1:numberOfSweeps
    eval(sprintf("l_1_%d = d.lambda_1(d.sweep == %d);",i,i));
    eval(sprintf("l_2_%d = d.lambda_2(d.sweep == %d);",i,i));
    eval(sprintf("w_1_%d = d.water_temp1(d.sweep == %d);",i,i));
    eval(sprintf("w_2_%d = d.water_temp2(d.sweep == %d);",i,i));
    eval(sprintf("ml(%d,1) = mean(l_1_%d(2:n));",i,i));
    eval(sprintf("ml(%d,2) = mean(l_2_%d(2:n));",i,i));
    eval(sprintf("mw(%d,1) = mean(w_1_%d(2:n));",i,i));
    eval(sprintf("mw(%d,2) = mean(w_2_%d(2:n));",i,i));
end

figure(1)
plot(mw,ml,'o')

%%
a = polyfit(mw(:,1),ml(:,1),2);
b = polyfit(mw(:,2),ml(:,2),2);

c = 75:0.01:95;

mlCalc1 = a(1) * c.^2 + a(2) * c + a(3);
mlCalc2 = b(1) * c.^2 + b(2) * c + b(3);

figure(10)
plot(mw(:,1),ml(:,1),'o')
hold on
plot(c,mlCalc1)
hold off

figure(11)
plot(mw(:,2),ml(:,2),'o')
hold on
plot(c,mlCalc2)
hold off

%%
function speedAndRPM(fileName,n)
    d = readtable(fileName);
    figure(n)
    plot(d.OnTime_ms_,[100*d.Speed_km_h_,d.RPM])
    legend('Speed * 100','RPM')    
end

function speedVsRPM(fileName, n)
    d = readtable(fileName);
    figure(100 + n)
    plot(d.Speed_km_h_(d.burning == 1),d.RPM(d.burning == 1),'o')
    xlabel('Speed')
    ylabel('RPM')
end

function X = numberMakesMeFeelGood(a1,a7,a13,a19,a21,n)
X = [a1(n,1),a7(n,1),a13(n,1),a19(n,1),a21(n,1);...
    a1(n,2),a7(n,2),a13(n,2),a19(n,2),a21(n,2);...
    a1(n,3),a7(n,3),a13(n,3),a19(n,3),a21(n,3)...
];
end

function plotCorrelations(a,n,l)
figure(7000 + n)
x = 1500:250:4000;
plot(x,[ones(11,1),a])
title(l)
legend(["0","cor","ad","od","con"],'location','EastOutside')
end

function [q,l] = layItOnMe(d,n,m)
lambdan = d.lambda_1(d.sweep==n);
oiln = d.oil_temp1(d.sweep==n);
airn = d.air_temp1(d.sweep==n);

lambdam = d.lambda_1(d.sweep==m);
oilm = d.oil_temp1(d.sweep==m);
airm = d.air_temp1(d.sweep==m);

ld = zeros(length(lambdan),1);
od = zeros(length(lambdan),1);
ad = zeros(length(lambdan),1);
for i = 1:length(lambdan)
    ld(i) = lambdan(i)/lambdam(i);
    od(i) = (oiln(i) - oilm(i));
    ad(i) = (airn(i) - airm(i));
end

q = [ld,od,ad];
l = "Comparing " + n + " and " + m;
end

function compareSweeps(d,n,m)
figure(1000 + n)
plot(d.RPM(d.sweep==n),[...
    50*d.lambda_1(d.sweep==n),...
    d.oil_temp1(d.sweep==n),...
    d.air_temp1(d.sweep==n),...
    d.water_temp1(d.sweep==n),...
    50*d.lambda_1(d.sweep==m),...
    d.oil_temp1(d.sweep==m),...
    d.air_temp1(d.sweep==m),...
    d.water_temp1(d.sweep==m),...
])
title("Sweep " + n + " and " + m + ", gear 1")
legend(["50\lambda_1","oil_1","air_1","water_1","50\lambda_2","oil_2","air_2","water_2"], 'location', 'EastOutside')

figure(1100 + n)
plot(d.RPM(d.sweep==n),[...
    50*d.lambda_2(d.sweep==n),...
    d.oil_temp2(d.sweep==n),...
    d.air_temp2(d.sweep==n),...
    d.water_temp2(d.sweep==n),...
    50*d.lambda_2(d.sweep==m),...
    d.oil_temp2(d.sweep==m),...
    d.air_temp2(d.sweep==m),...
    d.water_temp2(d.sweep==m),...
])
title("Sweep " + n + " and " + m + ", gear 2")
legend(["50\lambda_1","oil_1","air_1","water_1","50\lambda_2","oil_2","air_2","water_2"], 'location', 'EastOutside')

end

%%
function plotSweep(d,n)
figure(1000 + n)
plot(d.RPM(d.sweep==n),[...
    50*d.lambda_1(d.sweep==n),...
    d.oil_temp1(d.sweep==n),...
    d.air_temp1(d.sweep==n),...
    d.water_temp1(d.sweep==n),...
])
title("Sweep " + n + ", gear 1")
legend(["50\lambda","oil","air","water"], 'location', 'EastOutside')

figure(1100 + n)
plot(d.RPM(d.sweep==n),[...
    50*d.lambda_2(d.sweep==n),...
    d.oil_temp2(d.sweep==n),...
    d.air_temp2(d.sweep==n),...
    d.water_temp2(d.sweep==n),...
])
title("Sweep " + n + ", gear 2")
legend(["50\lambda","oil","air","water"], 'location', 'EastOutside')
end