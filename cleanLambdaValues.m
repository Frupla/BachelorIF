
%Some proto code for applying removeEdgeLambdaValues to series of data

context = pwd;
storageplace = strcat(context,'/Behandlet data/logType3');
for n = 1:327
   cd(context);
   oldfilename = strcat('logtype2 (',num2str(n),').csv');
   data = getDataFromLog(oldfilename);
   newfilename =  strcat('logtype3 (',num2str(n),').csv');
   cd(storageplace);
   removeEdgeLambdaValues(data,newfilename);
end