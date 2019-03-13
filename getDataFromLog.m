function data = getDataFromLog(fileName)
    data = readtable(strcat('Behandlet data/logType2/', fileName));    
end