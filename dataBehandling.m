
d = readtable('actualRun8.csv');
d.lambda_1(isnan(d.lambda_1)) = 0;
d.lambda_2(isnan(d.lambda_2)) = 0;

d.oil_temp1(isnan(d.oil_temp1)) = 0;
d.oil_temp2(isnan(d.oil_temp2)) = 0;

d.water_temp1(isnan(d.water_temp1)) = 0;
d.water_temp2(isnan(d.water_temp2)) = 0;

%%
lambda12 = 1.2*ones(25,1);
lambda08 = 0.8*ones(25,1);

%%
figure(1)
plot(d.RPM(d.sweep == 1),d.lambda_1(d.sweep == 1));
hold on
plot(d.RPM(d.sweep == 2),d.lambda_1(d.sweep == 2));
plot(d.RPM(d.sweep == 3),d.lambda_1(d.sweep == 3));
plot(d.RPM(d.sweep == 4),d.lambda_1(d.sweep == 4));
plot(d.RPM(d.sweep == 5),d.lambda_1(d.sweep == 5));
plot(d.RPM(d.sweep == 5),d.lambda_1(d.sweep == 5));
plot(d.RPM(d.sweep == 1),lambda12)
plot(d.RPM(d.sweep == 1),lambda08)
hold off
%xlim([1500 4000])
legend('1','2','3','4','5','Location','EastOutside')

figure(2)
plot(d.RPM(d.sweep == 6),d.lambda_1(d.sweep == 6));
hold on
plot(d.RPM(d.sweep == 7),d.lambda_1(d.sweep == 7));
plot(d.RPM(d.sweep == 8),d.lambda_1(d.sweep == 8));
plot(d.RPM(d.sweep == 9),d.lambda_1(d.sweep == 9));
plot(d.RPM(d.sweep == 10),d.lambda_1(d.sweep == 10));
plot(d.RPM(d.sweep == 1),lambda12)
plot(d.RPM(d.sweep == 1),lambda08)
hold off
%xlim([1500 4000])
legend('6','7','8','9','10','Location','EastOutside')

figure(3)
plot(d.RPM(d.sweep == 11),d.lambda_1(d.sweep == 11));
hold on
plot(d.RPM(d.sweep == 12),d.lambda_1(d.sweep == 12));
plot(d.RPM(d.sweep == 13),d.lambda_1(d.sweep == 13));
plot(d.RPM(d.sweep == 14),d.lambda_1(d.sweep == 14));
plot(d.RPM(d.sweep == 15),d.lambda_1(d.sweep == 15));
plot(d.RPM(d.sweep == 1),lambda12)
plot(d.RPM(d.sweep == 1),lambda08)
hold off
%xlim([1500 4000])
legend('11','12','13','14','15','Location','EastOutside')

figure(4)
plot(d.RPM(d.sweep == 16),d.lambda_1(d.sweep == 16));
hold on
plot(d.RPM(d.sweep == 17),d.lambda_1(d.sweep == 17));
plot(d.RPM(d.sweep == 18),d.lambda_1(d.sweep == 18));
plot(d.RPM(d.sweep == 19),d.lambda_1(d.sweep == 19));
plot(d.RPM(d.sweep == 20),d.lambda_1(d.sweep == 20));
plot(d.RPM(d.sweep == 21),d.lambda_1(d.sweep == 21));
plot(d.RPM(d.sweep == 1),lambda12)
plot(d.RPM(d.sweep == 1),lambda08)
hold off
%xlim([1500 4000])
legend('16','17','18','19','20','21','Location','EastOutside')


figure(5)
plot(d.RPM(d.sweep == 1),d.lambda_2(d.sweep == 1));
hold on
plot(d.RPM(d.sweep == 2),d.lambda_2(d.sweep == 2));
plot(d.RPM(d.sweep == 3),d.lambda_2(d.sweep == 3));
plot(d.RPM(d.sweep == 4),d.lambda_2(d.sweep == 4));
plot(d.RPM(d.sweep == 5),d.lambda_2(d.sweep == 5));
plot(d.RPM(d.sweep == 5),d.lambda_2(d.sweep == 5));
plot(d.RPM(d.sweep == 1),lambda12)
plot(d.RPM(d.sweep == 1),lambda08)
hold off
%xlim([1500 4000])
legend('1','2','3','4','5','Location','EastOutside')

figure(6)
plot(d.RPM(d.sweep == 6),d.lambda_2(d.sweep == 6));
hold on
plot(d.RPM(d.sweep == 7),d.lambda_2(d.sweep == 7));
plot(d.RPM(d.sweep == 8),d.lambda_2(d.sweep == 8));
plot(d.RPM(d.sweep == 9),d.lambda_2(d.sweep == 9));
plot(d.RPM(d.sweep == 10),d.lambda_2(d.sweep == 10));
plot(d.RPM(d.sweep == 1),lambda12)
plot(d.RPM(d.sweep == 1),lambda08)
hold off
%xlim([1500 4000])
legend('6','7','8','9','10','Location','EastOutside')

figure(7)
plot(d.RPM(d.sweep == 11),d.lambda_2(d.sweep == 11));
hold on
plot(d.RPM(d.sweep == 12),d.lambda_2(d.sweep == 12));
plot(d.RPM(d.sweep == 13),d.lambda_2(d.sweep == 13));
plot(d.RPM(d.sweep == 14),d.lambda_2(d.sweep == 14));
plot(d.RPM(d.sweep == 15),d.lambda_2(d.sweep == 15));
plot(d.RPM(d.sweep == 1),lambda12)
plot(d.RPM(d.sweep == 1),lambda08)
hold off
%xlim([1500 4000])
legend('11','12','13','14','15','Location','EastOutside')

figure(8)
plot(d.RPM(d.sweep == 16),d.lambda_2(d.sweep == 16));
hold on
plot(d.RPM(d.sweep == 17),d.lambda_2(d.sweep == 17));
plot(d.RPM(d.sweep == 18),d.lambda_2(d.sweep == 18));
plot(d.RPM(d.sweep == 19),d.lambda_2(d.sweep == 19));
plot(d.RPM(d.sweep == 20),d.lambda_2(d.sweep == 20));
plot(d.RPM(d.sweep == 21),d.lambda_2(d.sweep == 21));
plot(d.RPM(d.sweep == 1),lambda12)
plot(d.RPM(d.sweep == 1),lambda08)
hold off
%xlim([1500 4000])
legend('16','17','18','19','20','21','Location','EastOutside')

%%

[avgLambda1,n] = meanBySweep(d.lambda_1);
avgLambda2 = meanBySweep(d.lambda_2);
avgOil1 = meanBySweep(d.oil_temp1);
avgOil2 = meanBySweep(d.oil_temp2);
avgWater1 = meanBySweep(d.water_temp1);
avgWater2 = meanBySweep(d.water_temp2);


figure(200)
yyaxis right
plot(n,[avgLambda1;avgLambda2],'r')
yyaxis left
hold on
plot(n,[avgOil1;avgOil2;avgWater1;avgWater2],'b')
hold off
