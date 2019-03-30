clear all; clc;

global global_info;

global_info.STOP_AT = 500;      %Stop simulations after 500 TU.
global_info.south = 1;
global_info.north = 1;
global_info.west = 1;
global_info.east = 1;

pns = pnstruct('model1_pn_pdf');

dyn.m0 = {'p1_Start', 13350/2, 'p2_Start',8500/2};
%variable firing times in seconds/100:
dyn.ft = {'t1_3',normrnd(0.72,0.058), 't2_4', normrnd(0.12,0.0075), 't3_4', normrnd(0.16,0.009), 't4_3',...
    normrnd(0.17,0.0095), 't4_8', normrnd(0.087,0.0038), 't3_5', normrnd(0.16,0.0065), 't4_6', ...
    normrnd(0.21,0.0092), 't5_7', normrnd(0.09,0.0058),'t5_6', normrnd(0.21,0.009), 't6_5', ...
    normrnd(0.14,0.0034), 't6_9', normrnd(0.09,0.004)}; 
%priorities
dyn.ip = {'t1_3', 2, 't3_4', 2, 't4_6', 2, 't6_9', 2, 't3_5', 1, 't6_5', 1, 't5_7', 1, 't4_3', 1};
pni = initialdynamics(pns, dyn);

sim = gpensim(pni);
%Plot of the ending places:
figure();
plotp(sim, {'p7Out','p8Out', 'p9Out'});
