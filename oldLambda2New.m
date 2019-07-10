function l = oldLambda2New(a)
dV = (1.51-0.8)/0.144;

slope = (1.47-0.25)/dV;


l = ((a - 0.25)/slope)*0.144 + 0.8;


end
