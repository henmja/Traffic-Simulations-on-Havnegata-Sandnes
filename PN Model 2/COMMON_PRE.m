function [fire, transition] = COMMON_PRE(transition)

global global_info;

p3C = get_place('p3_Center');
p4C = get_place('p4_Center');
p5C = get_place('p5_Center');
p6C = get_place('p6_Center');
p7C = get_place('p6_Center');
p8C = get_place('p6_Center');

time_stamp = string_HH_MM_SS(current_time());
fprintf('transition: "%s" initiated firing at %s\n\n', transition.name, time_stamp);

if (strcmp(transition.name, 't4_3')||strcmp(transition.name, 't1_3'))
    aux=(eq(p3C.tokens,0) && eq(global_info.se, 1));
    if aux
        global_info.se=0;
        fire=true;
    else 
        fire=false;
    end
elseif (strcmp(transition.name, 't4_5')||strcmp(transition.name, 't2_5'))
    aux=(eq(p5C.tokens,0) && eq(global_info.sw, 1));
    if aux
        global_info.sw=0;
        fire=true;
    else 
        fire=false;
    end
elseif (strcmp(transition.name, 't3_4')||strcmp(transition.name, 't5_4'))
    aux=(eq(p4C.tokens,0) && eq(global_info.s, 1));
    if aux
        global_info.s=0;
        fire=true;
    else 
        fire=false;
    end
elseif (strcmp(transition.name, 't3_6')||strcmp(transition.name, 't7_6'))
    aux=(eq(p6C.tokens,0) && eq(global_info.ne, 1));
    if aux
        global_info.ne=0;
        fire=true;
    else 
        fire=false;
    end
elseif (strcmp(transition.name, 't4_7')||strcmp(transition.name, 't6_7')||strcmp(transition.name, 't8_7'))
    aux=(eq(p7C.tokens,0) && eq(global_info.n, 1));
    if aux
        global_info.n=0;
        fire=true;
    else 
        fire=false;
    end
elseif (strcmp(transition.name, 't5_8')||strcmp(transition.name, 't7_8'))
    aux=(eq(p8C.tokens,0) && eq(global_info.nw, 1));
    if aux
        global_info.nw=0;
        fire=true;
    else 
        fire=false;
    end
else
    fire = true;
end