with argument1{
    um = ds_grid_get(obj_control.unitgrid,getc(x),getc(y));
    if um <= 0 {umm = 0; ums = 0;}else{
        umm = um.flying;
    }
    switch argument0.type{
        case 1: if abs(getc(argument0.x)-getc(x))+abs(getc(argument0.y)-getc(y)) <= 1 && umm = 0 state = argument2; break;
        case 2: if abs(getc(argument0.x)-getc(x))+abs(getc(argument0.y)-getc(y)) <= 1 && umm = 0 state = argument2; break;
        case 3: if abs(getc(argument0.x)-getc(x))+abs(getc(argument0.y)-getc(y)) <= 3 && abs(getc(argument0.x)-getc(x))+abs(getc(argument0.y)-getc(y)) >= 2 state = argument2; break;
        case 4: if abs(getc(argument0.x)-getc(x))+abs(getc(argument0.y)-getc(y)) <= 1 && umm = 0 state = argument2; break;
        case 5: if abs(getc(argument0.x)-getc(x))+abs(getc(argument0.y)-getc(y)) <= 1 && umm = 0 state = argument2; break;
        case 6: if abs(getc(argument0.x)-getc(x))+abs(getc(argument0.y)-getc(y)) <= 5 && abs(getc(argument0.x)-getc(x))+abs(getc(argument0.y)-getc(y)) >= 3 state = argument2; break;
        case 7: if abs(getc(argument0.x)-getc(x))+abs(getc(argument0.y)-getc(y)) <= 2 state = argument2; break;
        case 11: if abs(getc(argument0.x)-getc(x))+abs(getc(argument0.y)-getc(y)) <= 4 state = argument2; break;
        case 12: if abs(getc(argument0.x)-getc(x))+abs(getc(argument0.y)-getc(y)) <= 1 && umm = 0 state = argument2; break;
        case 13: if abs(getc(argument0.x)-getc(x))+abs(getc(argument0.y)-getc(y)) <= 6 && abs(getc(argument0.x)-getc(x))+abs(getc(argument0.y)-getc(y)) >= 3 state = argument2; break;
        case 15: if abs(getc(argument0.x)-getc(x))+abs(getc(argument0.y)-getc(y)) <= 1 && umm = 0 state = argument2; break;
        case 17: if abs(getc(argument0.x)-getc(x))+abs(getc(argument0.y)-getc(y)) <= 2 && (type = 1 || type = 4) state = argument2; break;
        case 18: if abs(getc(argument0.x)-getc(x))+abs(getc(argument0.y)-getc(y)) <= 1 state = argument2; break;
        case 19: if abs(getc(argument0.x)-getc(x))+abs(getc(argument0.y)-getc(y)) <= 2 && umm = 0 state = argument2; break;
        case 22: if abs(getc(argument0.x)-getc(x))+abs(getc(argument0.y)-getc(y)) <= 2 state = argument2; break;
        case 23: if abs(getc(argument0.x)-getc(x))+abs(getc(argument0.y)-getc(y)) <= 1 state = argument2; break;
    }
}
