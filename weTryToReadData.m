warning('OFF', 'MATLAB:table:ModifiedAndSavedVarnames')

%%

for i = 1:407
    eval(sprintf("d%d = getDataFromLog('logType2 (%d).csv');",i,i));
end

%%

drawStuff(d40,1)

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

