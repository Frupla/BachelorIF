function data = getDataFromLog(fileName)
    q = readtable(strcat('Behandlet data/logType2/',  fileName));
    
    data = [q(:,1),q(:,3),q(:,4),q(:,5),q(:,6),q(:,7),q(:,8),q(:,9),q(:,10),q(:,11),q(:,12),q(:,13),q(:,14),q(:,15),q(:,16),q(:,17),q(:,18),q(:,19),q(:,20)];
end