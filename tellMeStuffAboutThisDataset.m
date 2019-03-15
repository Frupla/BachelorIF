%Funciton that plots info about a dataset


function tellMeStuffAboutThisDataset (datafile)
dataset = getDataFromLog(datafile);
figure()
title('Values over time')
subplot(3,1,1)
plot(dataset.OnTime_ms_,dataset.Lambda)
xlabel('time [\mus]')
ylabel('\lambda')
subplot(3,1,2)
plot(dataset.OnTime_ms_,dataset.RPM)
xlabel('time [\mus]')
ylabel('RPM')
subplot(3,1,3)
plot(dataset.OnTime_ms_,dataset.FuelConsumed_g_)
xlabel('time [\mus]')
ylabel('Fuel Consumed [g]')


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
ylabel('injection time [\mus]');
title('injection time v RMS');

figure()
gscatter(dataset.InjectionDuration_us_,dataset.Lambda,dataset.Gear,'','xos');
xlabel('injection time [\mus]');
ylabel('\lambda');
title('injection time v \lambda');


FAs = 0.1114;
airMass3 = dataset.Lambda.*(dataset.FuelConsumed_g_/FAs);
%index=index+1;
figure()
gscatter(dataset.RPM,airMass3,dataset.Gear,'','xos');
xlabel('RPM');
ylabel('Air mass[g]');
title('Air mass vs RMS');
end