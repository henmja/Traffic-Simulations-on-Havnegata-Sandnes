function [pns] = model1_pn_pdf() 

pns.PN_name = 'Petri_Net_definition';

pns.set_of_Ps = {'p1_Start', 'p2_Start', 'p3_Center', 'p4_Center', 'p5_Center', 'p6_Center', 'p7Out', ...
    'p8Out', 'p9Out'};

pns.set_of_Ts = {'t1_3','t2_4', 't3_4', 't4_3', 't4_8', 't3_5', 't4_6', 't5_6', 't6_5', 't5_7', 't6_9'};

pns.set_of_As = {'p1_Start','t1_3',1, 't1_3','p3_Center',1,'p2_Start','t2_4',1,'t2_4','p4_Center',1 ...
    ,'p3_Center', 't3_4', 1, 'p4_Center', 't4_3', 1, 't4_3', 'p3_Center', 1, 't3_4', 'p4_Center', 1, 'p4_Center', 't4_8', 1, 't4_8', 'p8Out', 1 ...
    , 'p3_Center', 't3_5', 1, 't3_5', 'p5_Center', 1, 'p5_Center', 't5_7', 1, 't5_7', 'p7Out', 1 ...
    , 'p5_Center', 't5_6', 1, 't5_6', 'p6_Center', 1, 'p6_Center', 't6_5', 1, 't6_5', 'p5_Center', 1 ...
    , 'p4_Center', 't4_6', 1, 't4_6', 'p6_Center', 1, 'p6_Center', 't6_9', 1, 't6_9', 'p9Out', 1};
         
         