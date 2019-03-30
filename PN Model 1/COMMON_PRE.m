function [fire, transition] = COMMON_PRE(transition)

global global_info;

p3C = get_place('p3_Center');
p4C = get_place('p4_Center');
p5C = get_place('p5_Center');
p6C = get_place('p6_Center');

time_stamp = string_HH_MM_SS(current_time());
fprintf('transition: "%s" initiated firing at %s\n\n', transition.name, time_stamp);

if (strcmp(transition.name, 't4_3')||strcmp(transition.name, 't1_3'))
    aux=(eq(p3C.tokens,0) && eq(global_info.east, 1));
    if aux
        global_info.east=0;
        fire=true;
    else 
        fire=false;
    end
elseif (strcmp(transition.name, 't2_4')||strcmp(transition.name, 't3_4'))
    aux=(eq(p4C.tokens,0) && eq(global_info.south, 1));
    if aux
        global_info.south=0;
        fire=true;
    else 
        fire=false;
    end
elseif (strcmp(transition.name, 't6_5')||strcmp(transition.name, 't3_5'))
    aux=(eq(p5C.tokens,0) && eq(global_info.north, 1));
    if aux
        global_info.north=0;
        fire=true;
    else 
        fire=false;
    end
elseif (strcmp(transition.name, 't4_6')||strcmp(transition.name, 't5_6'))
    aux=(eq(p6C.tokens,0) && eq(global_info.west, 1));
    if aux
        global_info.west=0;
        fire=true;
    else 
        fire=false;
    end
else
    fire = true;
end
