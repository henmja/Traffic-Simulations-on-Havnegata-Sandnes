clear all; clc;

global global_info;

global_info.STOP_AT = 500; %end at 08:00  

global_info.s = 1;
global_info.n = 1;
global_info.nw = 1;
global_info.ne = 1;
global_info.sw = 1;
global_info.se = 1;

pns = pnstruct('model2_pn_pdf');

dyn.m0 = {'p1_Start', 13350/2, 'p2_Start',8500/2};
%Stochastic firing times in seconds/100:
dyn.ft = {'t1_3',normrnd(0.22, 0.0154), 't3_4', normrnd(0.47, 0.033), 't4_5', normrnd(0.165, 0.007),...
    't5_10', normrnd(0.089, 0.0046), 't4_7', normrnd(0.147, 0.006), 't5_8', normrnd(0.184,0.0098),...
    't6_7', normrnd(0.115, 0.009), 't7_6', normrnd(0.12,0.01),'t7_8', normrnd(0.16,0.0072), 't8_7', ...
    normrnd(0.163, 0.012), 't6_9', normrnd(0.093, 0.003), 't8_11', normrnd(0.089, 0.004), 't3_6', ...
    normrnd(0.638, 0.023), 't4_3', normrnd(0.492, 0.031), 't5_4', normrnd(0.145, 0.0049), 't2_5', ...
    normrnd(0.127, 0.0078)}; 
%Initial Priorities:
dyn.ip = {'t3_4', 2, 't4_3', 1, 't4_5', 2, 't5_4', 1, 't3_6', 2, 't4_7', 2, ...
    't5_8', 2, 't6_9', 1, 't6_7', 2, 't7_6', 1, 't7_8', 2, 't8_7', 1, 't8_11', 2};

pni = initialdynamics(pns, dyn);
sim = gpensim(pni);
%Plot of the ending places:
figure();
plotp(sim, {'p9Out','p10Out', 'p11Out'});
