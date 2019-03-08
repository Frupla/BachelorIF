d0 = getDataFromLog('ECUlog0.csv');
d1 = getDataFromLog('ECUlog1.csv');
d2 = getDataFromLog('ECUlog2.csv');
d3 = getDataFromLog('ECUlog3.csv');
d4 = getDataFromLog('ECUlog4.csv');
d5 = getDataFromLog('ECUlog5.csv');
d6 = getDataFromLog('ECUlog6.csv');
d7 = getDataFromLog('ECUlog7.csv');
d8 = getDataFromLog('ECUlog8.csv');
d9 = getDataFromLog('ECUlog9.csv');
d10 = getDataFromLog('ECUlog10.csv');
d11 = getDataFromLog('ECUlog11.csv');
d12 = getDataFromLog('ECUlog12.csv');
d13 = getDataFromLog('ECUlog13.csv');
d14 = getDataFromLog('ECUlog14.csv');
d15 = getDataFromLog('ECUlog15.csv');
d16 = getDataFromLog('ECUlog16.csv');
d17 = getDataFromLog('ECUlog17.csv');
d18 = getDataFromLog('ECUlog18.csv');

%%
close all
drawStuff(d0,0);
drawStuff(d1,1);
drawStuff(d2,2);
drawStuff(d3,3);
drawStuff(d4,4);
drawStuff(d5,5);
drawStuff(d6,6);
drawStuff(d7,7);
drawStuff(d8,8);
drawStuff(d9,9);
drawStuff(d10,10);
drawStuff(d11,11);
drawStuff(d12,12);
drawStuff(d13,13);
drawStuff(d14,14);
drawStuff(d15,15);
drawStuff(d16,16);
drawStuff(d17,17);
drawStuff(d18,18);

%%
%close(19)
figure(19)
hold on
plot(d0.RPM,d0.InjectionDuration_us_,'.')
plot(d1.RPM,d1.InjectionDuration_us_,'.')
plot(d2.RPM,d2.InjectionDuration_us_,'.')
plot(d3.RPM,d3.InjectionDuration_us_,'.')
plot(d4.RPM,d4.InjectionDuration_us_,'.')
plot(d5.RPM,d5.InjectionDuration_us_,'.')
plot(d6.RPM,d6.InjectionDuration_us_,'.')
plot(d7.RPM,d7.InjectionDuration_us_,'.')
plot(d8.RPM,d8.InjectionDuration_us_,'.')
plot(d9.RPM,d9.InjectionDuration_us_,'.')
plot(d10.RPM,d10.InjectionDuration_us_,'.')
plot(d11.RPM,d11.InjectionDuration_us_,'.')
plot(d12.RPM,d12.InjectionDuration_us_,'.')
plot(d13.RPM,d13.InjectionDuration_us_,'.')
plot(d14.RPM,d14.InjectionDuration_us_,'.')
plot(d15.RPM,d15.InjectionDuration_us_,'.')
plot(d16.RPM,d16.InjectionDuration_us_,'.')
plot(d17.RPM,d17.InjectionDuration_us_,'.')
plot(d18.RPM,d18.InjectionDuration_us_,'.')
hold off

%%
function drawStuff(data, n)
    figure(n)
    hold on
    yyaxis right
    plot(data.RPM,data.Lambda,'.')
    yyaxis left
    plot(data.RPM,data.InjectionDuration_us_,'.')
    hold off
end

