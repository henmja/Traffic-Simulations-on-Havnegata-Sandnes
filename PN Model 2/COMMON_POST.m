function [] = COMMON_POST(transition)

global global_info;

time_stamp = string_HH_MM_SS(current_time());
fprintf('transition: "%s" finished firing at %s\n\n', transition.name, time_stamp);

if (strcmp(transition.name, 't4_3') || strcmp(transition.name, 't1_3'))
    global_info.se=1;
elseif (strcmp(transition.name, 't4_5') || strcmp(transition.name, 't2_5'))
    global_info.sw=1;
elseif (strcmp(transition.name, 't3_4') || strcmp(transition.name, 't5_4'))
    global_info.s=1;
elseif (strcmp(transition.name, 't3_6') || strcmp(transition.name, 't7_6'))
    global_info.ne=1;
elseif (strcmp(transition.name, 't4_7') || strcmp(transition.name, 't6_7')|| ...
        strcmp(transition.name, 't8_7'))
    global_info.n=1;
elseif (strcmp(transition.name, 't5_8') || strcmp(transition.name, 't7_8'))
    global_info.nw=1;
end