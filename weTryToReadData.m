data = getDataFromLog('2018-07-03 21-36 ECU Log - 8.csv');
data(1,:)
%%
figure(1)
hold on
plot(data.RPM,data.Gear,'.')
plot(data.RPM,data.InjectionDuration_us_,'.')
hold off
figure(2)
plot(data.RPM,data.Lambda,'.')
figure(3)
plot(data.InjectionDuration_us_,data.Lambda,'.')