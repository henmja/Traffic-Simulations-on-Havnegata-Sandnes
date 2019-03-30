function [] = COMMON_POST(transition)

global global_info;

time_stamp = string_HH_MM_SS(current_time());
fprintf('transition: "%s" finished firing at %s\n\n', transition.name, time_stamp);

if (strcmp(transition.name, 't4_3') || strcmp(transition.name, 't1_3'))
    global_info.east=1;
elseif (strcmp(transition.name, 't2_4') || strcmp(transition.name, 't3_4'))
    global_info.south=1;
elseif (strcmp(transition.name, 't6_5')||strcmp(transition.name, 't3_5'))
    global_info.north=1;
elseif (strcmp(transition.name, 't4_6') || strcmp(transition.name, 't5_6'))
    global_info.west=1;
end

