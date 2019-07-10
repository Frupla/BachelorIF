d = readtable('theGoodDataFromLutRun1.csv');

%%

t1_1 = d.tinj_1(d.sweep==1);
t2_1 = d.tinj_1(d.sweep==2);
t3_1 = d.tinj_1(d.sweep==3);
t4_1 = d.tinj_1(d.sweep==4);
t5_1 = d.tinj_1(d.sweep==5);
t6_1 = d.tinj_1(d.sweep==6);
t7_1 = d.tinj_1(d.sweep==7);
t8_1 = d.tinj_1(d.sweep==8);
t9_1 = d.tinj_1(d.sweep==9);
t10_1 = d.tinj_1(d.sweep==10);
t11_1 = d.tinj_1(d.sweep==11);
t12_1 = d.tinj_1(d.sweep==12);
t13_1 = d.tinj_1(d.sweep==13);

t1_2 = d.tinj_2(d.sweep==1);
t2_2 = d.tinj_2(d.sweep==2);
t3_2 = d.tinj_2(d.sweep==3);
t4_2 = d.tinj_2(d.sweep==4);
t5_2 = d.tinj_2(d.sweep==5);
t6_2 = d.tinj_2(d.sweep==6);
t7_2 = d.tinj_2(d.sweep==7);
t8_2 = d.tinj_2(d.sweep==8);
t9_2 = d.tinj_2(d.sweep==9);
t10_2 = d.tinj_2(d.sweep==10);
t11_2 = d.tinj_2(d.sweep==11);
t12_1 = d.tinj_2(d.sweep==12);
t13_1 = d.tinj_2(d.sweep==13);

l1_1 = d.lambda_1(d.sweep==1);
l2_1 = d.lambda_1(d.sweep==2);
l3_1 = d.lambda_1(d.sweep==3);
l4_1 = d.lambda_1(d.sweep==4);
l5_1 = d.lambda_1(d.sweep==5);
l6_1 = d.lambda_1(d.sweep==6);
l7_1 = d.lambda_1(d.sweep==7);
l8_1 = d.lambda_1(d.sweep==8);
l9_1 = d.lambda_1(d.sweep==9);
l10_1 = d.lambda_1(d.sweep==10);
l11_1 = d.lambda_1(d.sweep==11);
l12_1 = d.lambda_1(d.sweep==12);
l13_1 = d.lambda_1(d.sweep==13);

l1_2 = d.lambda_2(d.sweep==1);
l2_2 = d.lambda_2(d.sweep==2);
l3_2 = d.lambda_2(d.sweep==3);
l4_2 = d.lambda_2(d.sweep==4);
l5_2 = d.lambda_2(d.sweep==5);
l6_2 = d.lambda_2(d.sweep==6);
l7_2 = d.lambda_2(d.sweep==7);
l8_2 = d.lambda_2(d.sweep==8);
l9_2 = d.lambda_2(d.sweep==9);
l10_2 = d.lambda_2(d.sweep==10);
l11_2 = d.lambda_2(d.sweep==11);
l12_1 = d.lambda_2(d.sweep==12);
l13_1 = d.lambda_2(d.sweep==13);



figure(1)
plot(d.RPM(d.sweep == 1),[...
    l1_1,...
    l2_1,...
    l3_1,...
    l4_1,...
    l5_1,...
    l6_1,...
    l7_1,...
    l8_1,...
    l9_1,...
    l10_1,...
    l11_1,...
    l12_1,...
    l13_1,...
    ])
%%


figure(2)
surf(d.RPM,d.temp)

