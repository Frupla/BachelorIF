function [out,index] = meanBySweep(inArray)

n = length(inArray)/25;

out = zeros(1,n);

for i = 1:n
    out(i) = mean(inArray(7+(i-1)*25:16+(i-1)*25));
end

index = 1:n;
end