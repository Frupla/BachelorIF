function [tinj1,tinj2] = calcInj(d, rpm, temp)
    tinj1 = sum(1.3 - d.lambda_1(d.RPM == rpm & d.temp == temp & d.datapoints1 ~= 0 & d.lambda_1 > 0.83))*2000;
    tinj2 = sum(1.3 - d.lambda_2(d.RPM == rpm & d.temp == temp & d.datapoints2 ~= 0 & d.lambda_2 > 0.83))*2000;
end