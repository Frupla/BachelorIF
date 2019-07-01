function [Rsq1,Rsq2] = processSweep(fileName)


d = rmmissing(readtable(fileName));
%{
d.lambda_1(isnan(d.lambda_1)) = 0;
d.lambda_2(isnan(d.lambda_2)) = 0;
 
d.oil_temp1(isnan(d.oil_temp1)) = 0;
d.oil_temp2(isnan(d.oil_temp2)) = 0;
  
d.water_temp1(isnan(d.water_temp1)) = 0;
d.water_temp2(isnan(d.water_temp2)) = 0;
  
d.air_temp1(isnan(d.air_temp1)) = 0;
d.air_temp2(isnan(d.air_temp2)) = 0;
%}
numberOfSweeps = d.sweep(end);

% for i = 1:numberOfSweeps
%     eval(sprintf("t_inj_1_%d = d.t_inj_1(d.sweep == %d);",i,i));
%     eval(sprintf("t_inj_2_%d = d.t_inj_2(d.sweep == %d);",i,i));
%     
%     eval(sprintf("lambda_1_%d = d.lambda_1(d.sweep == %d);",i,i));
%     eval(sprintf("lambda_2_%d = d.lambda_2(d.sweep == %d);",i,i));
% 
%     eval(sprintf("oil_1_%d = d.oil_temp1(d.sweep == %d);",i,i));
%     eval(sprintf("oil_2_%d = d.oil_temp2(d.sweep == %d);",i,i));
%   
%     eval(sprintf("water_1_%d = d.water_temp1(d.sweep == %d);",i,i));
%     eval(sprintf("water_2_%d = d.water_temp2(d.sweep == %d);",i,i));
%     
%     eval(sprintf("air_1_%d = d.air_temp1(d.sweep == %d);",i,i));
%     eval(sprintf("air_2_%d = d.air_temp2(d.sweep == %d);",i,i));
% end
% 
% 
% sets = floor(numberOfSweeps/5);
% 
% 
% for j = 0:sets
%     figure(1000 + j)
%     if j < sets
%         for i = (1 + j*5):((j+1)*5)
%             hold on
%             plot(d.RPM(d.sweep == 1), d.lambda_1(d.sweep == i))
%         end
%     else
%         for i = (1 + j*5):numberOfSweeps
%             hold on
%             plot(d.RPM(d.sweep == 1), d.lambda_1(d.sweep == i))
%         end
%     end
%     hold off
% end


%end

lambdaDiff1 = zeros(length(d.lambda_1(d.sweep==1)),numberOfSweeps-1);
lambdaDiff2 = zeros(length(d.lambda_1(d.sweep==1)),numberOfSweeps-1);
oilDiff1 = zeros(length(d.lambda_1(d.sweep==1)),numberOfSweeps-1);
airDiff1 = zeros(length(d.lambda_1(d.sweep==1)),numberOfSweeps-1);
waterDiff1 = zeros(length(d.lambda_1(d.sweep==1)),numberOfSweeps-1);
waterDiff2 = zeros(length(d.lambda_1(d.sweep==1)),numberOfSweeps-1);
   
% for j = 1:(numberOfSweeps-1)
%     n = j;
%     m = j+1;
%     lambdan1 = d.lambda_1(d.sweep==n);
%     oiln1 = d.oil_temp1(d.sweep==n);
%     airn1 = d.air_temp1(d.sweep==n);
%     watern1 = d.water_temp1(d.sweep==n);
%     
%     lambdan2 = d.lambda_2(d.sweep==n);
%     oiln2 = d.oil_temp2(d.sweep==n);
%     airn2 = d.air_temp2(d.sweep==n);
%     watern2 = d.water_temp2(d.sweep==n);
% 
%     lambdam1 = d.lambda_1(d.sweep==m);
%     oilm1 = d.oil_temp1(d.sweep==m);
%     airm1 = d.air_temp1(d.sweep==m);
%     waterm1 = d.water_temp1(d.sweep==m);
%     
%     lambdam2 = d.lambda_2(d.sweep==m);
%     oilm2 = d.oil_temp2(d.sweep==m);
%     airm2 = d.air_temp2(d.sweep==m);
%     waterm2 = d.water_temp2(d.sweep==m);
% 
%     ld1 = zeros(length(lambdan1),1);
%     od1 = zeros(length(lambdan1),1);
%     ad1 = zeros(length(lambdan1),1);
%     wd1 = zeros(length(lambdan1),1);
%     
%     ld2 = zeros(length(lambdan1),1);
%     od2 = zeros(length(lambdan1),1);
%     ad2 = zeros(length(lambdan1),1);
%     wd2 = zeros(length(lambdan1),1);
%    
%     lr1 = zeros(length(lambdan1),1);
%     or1 = zeros(length(lambdan1),1);
%     ar1 = zeros(length(lambdan1),1);
%     wr1 = zeros(length(lambdan1),1);
%    
%     lr2 = zeros(length(lambdan1),1);
%     or2 = zeros(length(lambdan1),1);
%     ar2 = zeros(length(lambdan1),1);
%     wr2 = zeros(length(lambdan1),1);
%    
%     
%     
%     for i = 1:length(lambdan1)
%         ld1(i) = lambdan1(i)-lambdam1(i);
% %         od1(i) = oiln1(i)-oilm1(i);
% %         ad1(i) = airn1(i)-airm1(i);
%         wd1(i) = watern1(i)-waterm1(i);
%         
%         ld2(i) = lambdan2(i)-lambdam2(i);
% %         od2(i) = oiln2(i)-oilm2(i);
% %         ad2(i) = airn2(i)-airm2(i);
%         wd2(i) = watern2(i)-waterm2(i);
%         
%         lr1(i) = lambdan1(i)/lambdam1(i);
% %         or1(i) = oiln1(i)/oilm1(i);
% %         ar1(i) = airn1(i)/airm1(i);
%         wr1(i) = watern1(i)/waterm1(i);
%         
%         lr2(i) = lambdan2(i)/lambdam2(i);
% %         or2(i) = oiln2(i)/oilm2(i);
% %         ar2(i) = airn2(i)/airm2(i);
%         wr2(i) = watern2(i)/waterm2(i);
%     end
% 
%     D1 = [ld1,wd1];%od1,ad1,wd1];
%     R1 = [lr1,wr1];%or1,ar1,wr1];
%     
%     
%     lambdaDiff1(:,j) = ld1;
%     lambdaDiff2(:,j) = ld2;
% %     oilDiff1(:,j) = od1;
% %     airDiff1(:,j) = ad1;
%     waterDiff1(:,j) = wd1;
%     waterDiff2(:,j) = wd2;
%     
%     
%     D2 = [ld2,wd2];%od2,ad2,wd2];
%     R2 = [lr2,wr2];%or2,ar2,wr2];
%     
%     l1 = "Comparing " + n + " and " + m + ", gear 1";
%     l2 = "Comparing " + n + " and " + m + ", gear 2";
%  
%      x = 1500:250:4000;   
% %      figure(1000 + n)
% %     
% %      subplot(2,1,1)
% %      plot(x,[zeros(11,1),D1])
% %      title(l1)
% %      legend(["0","lambda diff","water diff"],'location','EastOutside')
% %      %"air diff","oil diff",
% %      subplot(2,1,2)
% %      plot(x,[ones(11,1),R1])
% %      legend(["1","lambda ratio","water ratio"],'location','EastOutside')
% %      %"air ratio","oil ratio",
% %      figure(2000 + n)
% %     
% %      subplot(2,1,1)
% %      plot(x,[zeros(11,1),D2])
% %      title(l2)
% %      legend(["0","lambda diff","water diff"],'location','EastOutside')
% %      %"air diff","oil diff",
% %      subplot(2,1,2)
% %      plot(x,[ones(11,1),R2])
% %      legend(["1","lambda ratio","water ratio"],'location','EastOutside')
% %      %"air ratio","oil ratio",
% end

slopes1 = zeros(11,1);
offsets1 = zeros(11,1);

slopes2 = zeros(11,1);
offsets2 = zeros(11,1);

Rsq1 = zeros(11,1);
Rsq2 = zeros(11,1);

for i = 2:(length(d.lambda_1(d.sweep==1)))
    figure(300 + i)
%     x = waterDiff1(i,:)';
%     y = lambdaDiff1(i,:)';
    
    x1 = d.water_temp1(d.RPM == (250*i + 1250));
    y1 = d.lambda_1(d.RPM == (250*i + 1250));  
 
    a1 = polyfit(x1,y1,1);
    
    slopes1(i) = a1(1);
    offsets1(i) = a1(2);
    
    yCalc1 = x1*a1(1) + a1(2);
    
    R1 = 1 - sum((y1 - yCalc1).^2)/sum((y1 - mean(y1)).^2);
    Rsq1(i) = R1;
    
   
    x2 = d.water_temp2(d.RPM == (250*i + 1250));
    y2 = d.lambda_2(d.RPM == (250*i + 1250));  
     
    a2 = polyfit(x2,y2,1);
    
    slopes2(i) = a2(1);
    offsets2(i) = a2(2);
    
    yCalc2 = x2*a2(1) + a2(2);
    
    R2 = 1 - sum((y2 - yCalc2).^2)/sum((y2 - mean(y2)).^2);
    Rsq2(i) = R2;
    
    plot([x1,x2], [y1,y2],'o');%[oilDiff1(i,:);airDiff1(i,:);waterDiff1(i,:)])
    hold on
    plot([x1,x2], [yCalc1,yCalc2]);
    hold off
    legend('\lambda_1','\lambda_2', ""+R1,""+R2,'Location','EastOutside')
    ylabel("\lambda");
    xlabel("water temp");
    %"Oil","Air",
    title("lambda and temperature changes, gear 2, @RPM = " + (250*i + 1250));

end



end