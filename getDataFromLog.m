function data = getDataFromLog(fileName)
    data = readtable(strcat('data/', fileName));    
end