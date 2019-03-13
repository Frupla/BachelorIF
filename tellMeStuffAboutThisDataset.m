%Funciton that plots info about a dataset


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