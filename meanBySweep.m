function [out,index] = meanBySweep(inArray)

n = length(inArray)/10;

out = zeros(1,n);

for i = 1:n
    out(i) = mean(inArray(1+(i-1)*10:10+(i-1)*10));
end

index = 1:n;
end