d1 = readtable('actualRun.csv');
d2 = readtable('actualRun2.csv');
d3 = readtable('actualRun3.csv');
%%
d = readtable('actualRun8.csv');
%%
figure(1)
scatter(d2.OnTime_ms_,d2.RPM)
title('RPM')

figure(2)
scatter(d2.OnTime_ms_,d2.Speed_km_h_)
title('speed')

figure(3)
scatter(d2.OnTime_ms_,d2.Lambda)
title('lambda')

figure(4)
scatter(d2.OnTime_ms_,d2.InjectionDuration_us_)
title('Injection time')

figure(5)
scatter(d2.OnTime_ms_,d2.Gear)
title('Gear')
%%

figure(7)
hold on
yyaxis left
scatter(d2.OnTime_ms_,d2.RPM, 'g')
yyaxis right
scatter(d2.OnTime_ms_,d2.Lambda, 'b')
scatter(d2.OnTime_ms_,d2.Gear, 'r')
hold off
%%
figure(6)
hold on
yyaxis left
scatter(d.RPM,d.t_inj_1)
scatter(d.RPM,d.t_inj_2)
yyaxis right
scatter(d.RPM,d.lambda_1)
scatter(d.RPM,d.lambda_2)
hold off
%%
figure(1)
plot(d.RPM(d.sweep == 1),d.lambda_1(d.sweep == 1));
hold on
plot(d.RPM(d.sweep == 2),d.lambda_1(d.sweep == 2));
plot(d.RPM(d.sweep == 3),d.lambda_1(d.sweep == 3));
plot(d.RPM(d.sweep == 4),d.lambda_1(d.sweep == 4));
plot(d.RPM(d.sweep == 5),d.lambda_1(d.sweep == 5));
hold off

%plot(d.RPM(d.sweep == 6),d.lambda_1(d.sweep == 6));
%plot(d.RPM(d.sweep == 7),d.lambda_1(d.sweep == 7));
%plot(d.RPM(d.sweep == 8),d.lambda_1(d.sweep == 8));
%plot(d.RPM(d.sweep == 9),d.lambda_1(d.sweep == 9));
plot(d.RPM(d.sweep == 10),d.lambda_1(d.sweep == 10));
%plot(d.RPM(d.sweep == 11),d.lambda_1(d.sweep == 11));
%plot(d.RPM(d.sweep == 12),d.lambda_1(d.sweep == 12));
%plot(d.RPM(d.sweep == 13),d.lambda_1(d.sweep == 13));
%plot(d.RPM(d.sweep == 14),d.lambda_1(d.sweep == 14));
plot(d.RPM(d.sweep == 15),d.lambda_1(d.sweep == 15));
%plot(d.RPM(d.sweep == 16),d.lambda_1(d.sweep == 16));
%plot(d.RPM(d.sweep == 17),d.lambda_1(d.sweep == 17));
%plot(d.RPM(d.sweep == 18),d.lambda_1(d.sweep == 18));
%plot(d.RPM(d.sweep == 19),d.lambda_1(d.sweep == 19));
%plot(d.RPM(d.sweep == 20),d.lambda_1(d.sweep == 20));
plot(d.RPM(d.sweep == 21),d.lambda_1(d.sweep == 21));
hold off
xlim([1500 4000])
%legend('1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','Location','EastOutside')
legend('2','5','10','15','21')
%%
figure(2)
plot(d.RPM,[d.lambda_1,d.lambda_2],'.');
%figure(3)
%gscatter(d4.time_ms,d4.lambda_2,d4.sweep);
%%
t1 = readtable('temperatur1.csv');
t2 = readtable('temperatur2.csv');
t3 = readtable('temperatur3.csv');
%%
figure(1)
yyaxis left
gscatter(t1.RPM,t1.Lambda,t1.Gear,'br','xx')
yyaxis right
plot(t1.RPM,t1.OilTemperature_C_,'.')

figure(2)
yyaxis left
gscatter(t2.RPM,t2.Lambda,t2.Gear,'br','xx')
yyaxis right

plot(t2.RPM,t2.OilTemperature_C_,'.')

figure(3)
yyaxis left
gscatter(t3.RPM,t3.Lambda,t3.Gear,'br','xx')
yyaxis right
plot(t3.RPM,t3.OilTemperature_C_,'.')