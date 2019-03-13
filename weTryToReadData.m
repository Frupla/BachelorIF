getDataFromLog('logType2 (159).csv');


%%

for i = 1:407
    eval(sprintf("d%d = getDataFromLog('logType2 (%d).csv');",i,i));
end


%%
close all
drawStuff(d0,0);
drawStuff(d1,1);
drawStuff(d2,2);
drawStuff(d3,3);
drawStuff(d4,4);
drawStuff(d5,5);
drawStuff(d6,6);

%%
close(19)
figure(19)
hold on
plot(d0.RPM,d0.Lambda,'.')
plot(d1.RPM,d1.Lambda,'.')
plot(d2.RPM,d2.Lambda,'.')
plot(d3.RPM,d3.Lambda,'.')
plot(d4.RPM,d4.Lambda,'.')
plot(d5.RPM,d5.Lambda,'.')
plot(d6.RPM,d6.Lambda,'.')
hold off

%%
function drawStuff(data, n)
    figure(n+1)
    hold on
    yyaxis right
    plot(data.RPM,data.InjectionDuration_us_,'.')
    yyaxis left
    plot(data.RPM,data.Lambda,'.')
    hold off
end
