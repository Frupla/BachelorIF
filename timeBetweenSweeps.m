function x = timeBetweenSweeps(d,n,m)
    x = mean(d.time_ms(d.sweep == n)) - mean(d.time_ms(d.sweep == m));
end