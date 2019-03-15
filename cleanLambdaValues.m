
%Some proto code for applying removeEdgeLambdaValues to series of data
for n = 4:327
   oldfilename = strcat('logtype2 (',num2str(n),').csv')
   data = getDataFromLog(oldfilename);
   newfilename =  strcat('logtype3 (',num2str(n),').csv')
   removeEdgeLambdaValues(data,newfilename);
end