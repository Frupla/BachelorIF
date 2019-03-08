%Engine model, according to chapter 2 to 
%Internal Combustion Engine Handbook chapter 3
%Attempt 1
MC = 12.066;
MO = 15.999;
MH = 1.008;
MO2 = 2*MO;
MC2H6O = MC*2 + MH*6 + MO;

c = 2*MC/MC2H6O;
h = 6*MH/MC2H6O;
o = MO/MC2H6O;

x = c*MO2/MC
y = h*MO2/MH
z = o*MO2/MO

epsilonO2L = 0.232; 
Lst = 1/epsilonO2L*(x+(1/4)*y-(z/2));

%% Attempt 2 - the simple one,that actually works

epsilonO2L = 0.232; 
Lst = 3/epsilonO2L
%lambda = mL/(mK*Lst);
%mL = lambda*mK*Lst
%If mk and lambda is known, then mL can be found
%

