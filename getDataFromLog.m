function data = getDataFromLog(fileName)
    opts.SelectedVariableNames = {'OnTime', 'Time', 'Speed', 'Distance', 'RPM', 'Lambda', 'Starter', 'Gear', 'FuelCorrection', 'FuelConsumption', 'FuelConsumed', 'BatteryVoltage', 'Oil temperature (C)', 'Water temperature (C)', 'Exhaust temperature (C)', 'Brake front (bar)', 'Brake rear (bar)', 'State', 'Injection duration (us)', 'Injection angle'}; 
    data = readtable(strcat('Behandlet data/logType2/',  fileName));
end