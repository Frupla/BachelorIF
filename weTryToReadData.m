warning('OFF', 'MATLAB:table:ModifiedAndSavedVarnames')

%%

d = getDataFromLog('logType2 (2).csv');

%%

for i = 3:407
    eval(sprintf("d = [d ; getDataFromLog('logType2 (%d).csv')];",i));
end

%%

figure(10)
hold on
yyaxis left
plot(d.RPM,d.InjectionDuration_us_,'.');
yyaxis right
plot(d.RPM,d.Lambda,'.');
xlim([1000,4000])
%%
drawStuff(d,1)

%%
function drawStuff(data, n)
    figure(n)
    hold on
    yyaxis right
    plot(data.RPM,data.InjectionDuration_us_,'.')
    yyaxis left
    plot(data.RPM,data.Lambda,'.')
    hold off
end

