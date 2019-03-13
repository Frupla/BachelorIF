d0 = getDataFromLog('logType1 (1).csv');
d1 = getDataFromLog('logType1 (2).csv');
d2 = getDataFromLog('logType1 (3).csv');
d3 = getDataFromLog('logType1 (4).csv');
d4 = getDataFromLog('logType1 (5).csv');
d5 = getDataFromLog('logType1 (6).csv');    
d6 = getDataFromLog('logType1 (7).csv');

%%
%%close all
drawStuff(d0,0);
drawStuff(d1,1);
drawStuff(d2,2);
drawStuff(d3,3);
drawStuff(d4,4);
drawStuff(d5,5);
drawStuff(d6,6);

%%
%close(19)
figure(19)
hold on
plot(d0.RPM,d0.Lambda,'.')
plot(d1.RPM,d1.Lambda,'.')
plot(d2.RPM,d2.Lambda,'.')
plot(d3.RPM,d3.Lambda,'.')
plot(d4.RPM,d4.Lambda,'.')
plot(d5.RPM,d5.Lambda,'.')
plot(d6.RPM,d6.Lambda,'.')
plot(d7.RPM,d7.Lambda,'.')
plot(d8.RPM,d8.Lambda,'.')
plot(d9.RPM,d9.Lambda,'.')
plot(d10.RPM,d10.Lambda,'.')
plot(d11.RPM,d11.Lambda,'.')
plot(d12.RPM,d12.Lambda,'.')
plot(d13.RPM,d13.Lambda,'.')
plot(d14.RPM,d14.Lambda,'.')
plot(d15.RPM,d15.Lambda,'.')
plot(d16.RPM,d16.Lambda,'.')
plot(d17.RPM,d17.Lambda,'.')
plot(d18.RPM,d18.Lambda,'.')
hold off

%%
function drawStuff(data, n)
    figure(n+1)
    hold on
    yyaxis right
    plot(data.RPM,data.FuelCorrection,'.')
    yyaxis left
    plot(data.RPM,data.Lambda,'.')
    hold off
end

