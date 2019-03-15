function newdata = removeEdgeLambdaValues(olddata,filename)
    newdata = olddata;
    n=1;    
    while n <= height(newdata)
       if or((newdata.Lambda(n) <= 0.25),(newdata.Lambda(n) >= 1.47))
           newdata(n,:) = []; 
       else
       n=n+1;
       end
    end
    if strcmp(filename,'no') == 0
        writetable(newdata,filename);
    end 
end