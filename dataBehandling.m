
d = readtable('actualRun8.csv');
d.lambda_1(isnan(d.lambda_1)) = 0;
d.lambda_2(isnan(d.lambda_2)) = 0;

d.oil_temp1(isnan(d.oil_temp1)) = 0;
d.oil_temp2(isnan(d.oil_temp2)) = 0;

d.water_temp1(isnan(d.water_temp1)) = 0;
d.water_temp2(isnan(d.water_temp2)) = 0;

d.air_temp1(isnan(d.air_temp1)) = 0;
d.air_temp2(isnan(d.air_temp2)) = 0;


%%
lambda11 = 1.1*ones(25,1);
lambda09 = 0.9*ones(25,1);

%%

[avgLambda1,n] = meanBySweep(d.lambda_1);
avgLambda2 = meanBySweep(d.lambda_2);
avgOil1 = meanBySweep(d.oil_temp1);
avgOil2 = meanBySweep(d.oil_temp2);
avgAir1 = meanBySweep(d.air_temp1);
avgAir2 = meanBySweep(d.air_temp2);


figure(200)
yyaxis right
plot(n,[avgLambda1;avgLambda2],'r')
yyaxis left
hold on
plot(n,[avgOil1;avgOil2],'b')
plot(n,[avgAir1;avgAir2],'g')
hold off

%%
figure(300)
scatter(d.RPM,d.oil_temp1);
hold on
scatter(d.RPM,d.oil_temp2);
hold off


%%
t_inj_1_1 = d.t_inj_1(d.sweep == 1);
t_inj_1_2 = d.t_inj_1(d.sweep == 2);
t_inj_1_3 = d.t_inj_1(d.sweep == 3);
t_inj_1_4 = d.t_inj_1(d.sweep == 4);
t_inj_1_5 = d.t_inj_1(d.sweep == 5);
t_inj_1_6 = d.t_inj_1(d.sweep == 6);
t_inj_1_7 = d.t_inj_1(d.sweep == 7);
t_inj_1_8 = d.t_inj_1(d.sweep == 8);
t_inj_1_9 = d.t_inj_1(d.sweep == 9);
t_inj_1_10 = d.t_inj_1(d.sweep == 10);

t_inj_2_1 = d.t_inj_2(d.sweep == 1);
t_inj_2_2 = d.t_inj_2(d.sweep == 2);
t_inj_2_3 = d.t_inj_2(d.sweep == 3);
t_inj_2_4 = d.t_inj_2(d.sweep == 4);
t_inj_2_5 = d.t_inj_2(d.sweep == 5);
t_inj_2_6 = d.t_inj_2(d.sweep == 6);
t_inj_2_7 = d.t_inj_2(d.sweep == 7);
t_inj_2_8 = d.t_inj_2(d.sweep == 8);
t_inj_2_9 = d.t_inj_2(d.sweep == 9);
t_inj_2_10= d.t_inj_2(d.sweep == 10);

figure(11)
plot(d.RPM(d.sweep == 1),...
[...
    t_inj_1_1,...
    t_inj_1_2,...
    t_inj_1_3,...
    t_inj_1_4,...
    t_inj_1_5,...
])
title('Injection times, Gear 1, sweep 1 - 5')
grid()
legend('1','2','3','4','5','Location','EastOutside')

figure(12)
plot(d.RPM(d.sweep == 1),...
[...
    t_inj_1_6,...
    t_inj_1_7,...
    t_inj_1_8,...
    t_inj_1_9,...
    t_inj_1_10,...
])
title('Injection times, Gear 1, sweep 6 - 10')
grid()
legend('6','7','8','9','10','Location','EastOutside')

figure(13)
plot(d.RPM(d.sweep == 1),...
[...
    t_inj_2_1,...
    t_inj_2_2,...
    t_inj_2_3,...
    t_inj_2_4,...
    t_inj_2_5,...
])
title('Injection times, Gear 2, sweep 1 - 5')
grid()
legend('1','2','3','4','5','Location','EastOutside')

figure(14)
plot(d.RPM(d.sweep == 1),...
[...
    t_inj_2_6,...
    t_inj_2_7,...
    t_inj_2_8,...
    t_inj_2_9,...
    t_inj_2_10,...
])
title('Injection times, Gear 2, sweep 6 - 10')
grid()
legend('6','7','8','9','10','Location','EastOutside')

%%
lambda_1_1 = d.lambda_1(d.sweep == 1);
lambda_1_2 = d.lambda_1(d.sweep == 2);
lambda_1_3 = d.lambda_1(d.sweep == 3);
lambda_1_4 = d.lambda_1(d.sweep == 4);
lambda_1_5 = d.lambda_1(d.sweep == 5);
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
    lambda11,...
    lambda09...
])
title('Lambda, Gear 1, sweep 1 - 5')
grid()
legend('1','2','3','4','5','Location','EastOutside')

figure(2)
plot(d.RPM(d.sweep == 1),...
[...
    lambda_1_6,...
    lambda_1_7,...
    lambda_1_8,...
    lambda_1_9,...
    lambda_1_10,...
    lambda11,...
    lambda09...
])
title('Lambda, Gear 1, sweep 6 - 10')
grid()
legend('6','7','8','9','10','Location','EastOutside')

figure(3)
plot(d.RPM(d.sweep == 1),...
[...
    lambda_2_1,...
    lambda_2_2,...
    lambda_2_3,...
    lambda_2_4,...
    lambda_2_5,...
    lambda11,...
    lambda09...
])
title('Lambda, Gear 2, sweep 1 - 5')
grid()
legend('1','2','3','4','5','Location','EastOutside')

figure(4)
plot(d.RPM(d.sweep == 1),...
[...
    lambda_2_6,...
    lambda_2_7,...
    lambda_2_8,...
    lambda_2_9,...
    lambda_2_10,...
    lambda11,...
    lambda09...
])
title('Lambda, Gear 2, sweep 6 - 10')
grid()
legend('6','7','8','9','10','Location','EastOutside')


%%

f = -6250:250:6250;

fs = 2*6250;
fr = 250;

t = 0:1/fs:1/fr;

T_inj_1_1 = swiggitySwooty(d.t_inj_1(d.sweep == 1));
T_inj_1_2 = swiggitySwooty(d.t_inj_1(d.sweep == 2));
T_inj_1_3 = swiggitySwooty(d.t_inj_1(d.sweep == 3));
T_inj_1_4 = swiggitySwooty(d.t_inj_1(d.sweep == 4));
T_inj_1_5 = swiggitySwooty(d.t_inj_1(d.sweep == 5));
T_inj_1_6 = swiggitySwooty(d.t_inj_1(d.sweep == 6));
T_inj_1_7 = swiggitySwooty(d.t_inj_1(d.sweep == 7));
T_inj_1_8 = swiggitySwooty(d.t_inj_1(d.sweep == 8));
T_inj_1_9 = swiggitySwooty(d.t_inj_1(d.sweep == 9));
T_inj_1_10= swiggitySwooty(d.t_inj_1(d.sweep == 10));
T_inj_1_11 = swiggitySwooty(d.t_inj_1(d.sweep == 11));
T_inj_1_12 = swiggitySwooty(d.t_inj_1(d.sweep == 12));
T_inj_1_13 = swiggitySwooty(d.t_inj_1(d.sweep == 13));
T_inj_1_14 = swiggitySwooty(d.t_inj_1(d.sweep == 14));
T_inj_1_15 = swiggitySwooty(d.t_inj_1(d.sweep == 15));
T_inj_1_16 = swiggitySwooty(d.t_inj_1(d.sweep == 16));
T_inj_1_17 = swiggitySwooty(d.t_inj_1(d.sweep == 17));
T_inj_1_18 = swiggitySwooty(d.t_inj_1(d.sweep == 18));
T_inj_1_19 = swiggitySwooty(d.t_inj_1(d.sweep == 19));
T_inj_1_20= swiggitySwooty(d.t_inj_1(d.sweep == 20));
T_inj_1_21= swiggitySwooty(d.t_inj_1(d.sweep == 21));

iT_inj_1_1 = ifft(T_inj_1_1,'symmetric');
iT_inj_1_2 = ifft(T_inj_1_2,'symmetric');
iT_inj_1_3 = ifft(T_inj_1_3,'symmetric');
iT_inj_1_4 = ifft(T_inj_1_4,'symmetric');
iT_inj_1_5 = ifft(T_inj_1_5,'symmetric');
iT_inj_1_6 = ifft(T_inj_1_6,'symmetric');
iT_inj_1_7 = ifft(T_inj_1_7,'symmetric');
iT_inj_1_8 = ifft(T_inj_1_8,'symmetric');
iT_inj_1_9 = ifft(T_inj_1_9,'symmetric');
iT_inj_1_10= ifft(T_inj_1_10,'symmetric');
iT_inj_1_11 = ifft(T_inj_1_11,'symmetric');
iT_inj_1_12 = ifft(T_inj_1_12,'symmetric');
iT_inj_1_13 = ifft(T_inj_1_13,'symmetric');
iT_inj_1_14 = ifft(T_inj_1_14,'symmetric');
iT_inj_1_15 = ifft(T_inj_1_15,'symmetric');
iT_inj_1_16 = ifft(T_inj_1_16,'symmetric');
iT_inj_1_17 = ifft(T_inj_1_17,'symmetric');
iT_inj_1_18 = ifft(T_inj_1_18,'symmetric');
iT_inj_1_19 = ifft(T_inj_1_19,'symmetric');
iT_inj_1_20= ifft(T_inj_1_20,'symmetric');
iT_inj_1_21= ifft(T_inj_1_21,'symmetric');

figure(1337)
plot(f,T_inj_1_1)
hold on
plot(f,T_inj_1_2)
plot(f,T_inj_1_3)
plot(f,T_inj_1_4)
plot(f,T_inj_1_5)
plot(f,T_inj_1_6)
plot(f,T_inj_1_7)
plot(f,T_inj_1_8)
plot(f,T_inj_1_9)
plot(f,T_inj_1_10)
plot(f,T_inj_1_11)
plot(f,T_inj_1_12)
plot(f,T_inj_1_13)
plot(f,T_inj_1_14)
plot(f,T_inj_1_15)
plot(f,T_inj_1_16)
plot(f,T_inj_1_17)
plot(f,T_inj_1_18)
plot(f,T_inj_1_19)
plot(f,T_inj_1_20)
plot(f,T_inj_1_21)
hold off

figure(1338)
plot(t,iT_inj_1_1)
hold on
plot(t,iT_inj_1_2)
plot(t,iT_inj_1_3)
plot(t,iT_inj_1_4)
plot(t,iT_inj_1_5)
plot(t,iT_inj_1_6)
plot(t,iT_inj_1_7)
plot(t,iT_inj_1_8)
plot(t,iT_inj_1_9)
plot(t,iT_inj_1_10)
plot(t,iT_inj_1_11)
plot(t,iT_inj_1_12)
plot(t,iT_inj_1_13)
plot(t,iT_inj_1_14)
plot(t,iT_inj_1_15)
plot(t,iT_inj_1_16)
plot(t,iT_inj_1_17)
plot(t,iT_inj_1_18)
plot(t,iT_inj_1_19)
plot(t,iT_inj_1_20)
plot(t,iT_inj_1_21)
hold off

figure(69)
plot(t,[iT_inj_1_1,iT_inj_1_21])

%%
corr(iT_inj_1_1,iT_inj_1_21)

%%
function t = swiggitySwooty(f)
    a = [zeros(5,1);f(6:16) ;zeros(9,1)];
    t = [flipud(a);0;a];
end





