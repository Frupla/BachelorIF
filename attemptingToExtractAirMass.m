data = getDataFromLog('2018-07-03 21-36 ECU Log - 8.csv');
data1 = data;
data1(1639,:) = [];
data1(1638,:) = [];
data1(1637,:) = [];
data1(1636,:) = [];
%%
figure(1)
gscatter(data.RPM,data.Lambda,data.Gear,'','xos');
xlabel('RPM');
ylabel('\lambda');
title('\lambda(RMS), 2018-07-03 21-36');
%0.25 og 1.47 er henholdsvis max og min

figure(2)
gscatter(data.RPM,data.InjectionDuration_us_,data.Gear,'','xos');
xlabel('RPM');
ylabel('t[\mus]');
title('injection time v RMS, 2018-07-03 21-36');

%converting form time to fuel mass:
%fuelConversionSlope*injectionDurationTime + FuelCorrectionIntercept/(1000000.0)
%fuelConversionSlope = 0.78
%fuelConversionIntercept = 810
%fuelMass = 0.78*data1.InjectionDuration_us_+ 810/(1000000.0);
%figure(30)
%gscatter(data1.RPM,fuelMass,data1.Gear,'','xos');
%xlabel('RPM');
%ylabel('Fuel mass[g]');
%title('injection mass vs RMS, 2018-07-03 21-36');

figure(31)
gscatter(data.RPM,data.FuelConsumed_g_,data.Gear,'','xos');
xlabel('RPM');
ylabel('Fuel mass[g]');
title('injection mass vs RMS, 2018-07-03 21-36');


epsilonO2L = 0.232; 
Lst = 3/epsilonO2L;
%lambda = mL/(mK*Lst);
%mL = lambda*mK*Lst
%If mk and lambda is known, then mL can be found

%airMass1 = data1.Lambda ./(fuelMass*Lst);
%figure(32)
%gscatter(data1.RPM,airMass1,data1.Gear,'','xos');
%xlabel('RPM');
%ylabel('Air mass[g]');
%title('Air mass vs RMS, 2018-07-03 21-36');

airMass2 = data.Lambda ./(data.FuelConsumed_g_*Lst);
figure(33)
gscatter(data.RPM,airMass2,data.Gear,'','xos');
xlabel('RPM');
ylabel('Air mass[g]');
title('Air mass vs RMS, 2018-07-03 21-36');

FAs = 0.1114;
airMass3 = data.Lambda.*(data.FuelConsumed_g_/FAs);
figure(34)
gscatter(data.RPM,airMass3,data.Gear,'','xos');
xlabel('RPM');
ylabel('Air mass[g]');
title('Air mass vs RMS, 2018-07-03 21-36');
%I think this one looks the most realistic
%%

tellMeStuffAboutThisDataset('logType2 (1).csv');
tellMeStuffAboutThisDataset('logType2 (1).csv');
tellMeStuffAboutThisDataset('logType2 (2).csv');
tellMeStuffAboutThisDataset('logType2 (3).csv');
tellMeStuffAboutThisDataset('logType2 (4).csv');
tellMeStuffAboutThisDataset('logType2 (5).csv');

%%
for n=1:size(airMass)
   if  airMass(n) > 1
       m = n
       airMass(m)
   end
end

function tellMeStuffAboutThisDataset (datafile,figurenumber)
dataset = getDataFromLog(datafile);
figure()
title('Values over time')
subplot(3,1,1)
plot(dataset.OnTime_ms_,dataset.Lambda)
xlabel('\lambda')
ylabel('time [s]')
subplot(3,1,2)
plot(dataset.OnTime_ms_,dataset.RPM)
xlabel('RPM')
ylabel('time [s]')
subplot(3,1,3)
plot(dataset.OnTime_ms_,dataset.FuelConsumed_g_)
xlabel('Fuel Consumed [g]')
ylabel('time [s]')

%index=index+1;
figure()
gscatter(dataset.RPM,dataset.Lambda,dataset.Gear,'','xos');
xlabel('RPM');
ylabel('\lambda');
title('\lambda(RMS)');
%0.25 og 1.47 er henholdsvis max og min


%index=index+1;
figure()
gscatter(dataset.RPM,dataset.InjectionDuration_us_,dataset.Gear,'','xos');
xlabel('RPM');
ylabel('t[\mus]');
title('injection time v RMS');

FAs = 0.1114;
airMass3 = dataset.Lambda.*(dataset.FuelConsumed_g_/FAs);
%index=index+1;
figure()
gscatter(dataset.RPM,airMass3,dataset.Gear,'','xos');
xlabel('RPM');
ylabel('Air mass[g]');
title('Air mass vs RMS');
end