ds_list_clear(location);
with obj_ground{
    if ds_grid_get(obj_control.unitgrid,getc(x),getc(y)) > 0{
    switch argument0.type{
        case 1: if abs(getc(argument0.x)-getc(x))+abs(getc(argument0.y)-getc(y)) <= 1 && ds_grid_get(obj_control.unitgrid,getc(x),getc(y)).melee = 0 ds_list_add(other.location,id); break;
        case 2: if abs(getc(argument0.x)-getc(x))+abs(getc(argument0.y)-getc(y)) <= 1 && ds_grid_get(obj_control.unitgrid,getc(x),getc(y)).melee = 0 ds_list_add(other.location,id); break;
        case 3: if abs(getc(argument0.x)-getc(x))+abs(getc(argument0.y)-getc(y)) <= 3 && abs(getc(argument0.x)-getc(x))+abs(getc(argument0.y)-getc(y)) >= 2 ds_list_add(other.location,id); break;
        case 4: if abs(getc(argument0.x)-getc(x))+abs(getc(argument0.y)-getc(y)) <= 1 && ds_grid_get(obj_control.unitgrid,getc(x),getc(y)).melee = 0 ds_list_add(other.location,id); break;
        case 5: if abs(getc(argument0.x)-getc(x))+abs(getc(argument0.y)-getc(y)) <= 1 && ds_grid_get(obj_control.unitgrid,getc(x),getc(y)).melee = 0 ds_list_add(other.location,id); break;
        case 6: if abs(getc(argument0.x)-getc(x))+abs(getc(argument0.y)-getc(y)) <= 5 && abs(getc(argument0.x)-getc(x))+abs(getc(argument0.y)-getc(y)) >= 3 ds_list_add(other.location,id); break;
        case 7: if abs(getc(argument0.x)-getc(x))+abs(getc(argument0.y)-getc(y)) <= 2 ds_list_add(other.location,id); break;
        case 11: if abs(getc(argument0.x)-getc(x))+abs(getc(argument0.y)-getc(y)) <= 4 ds_list_add(other.location,id); break;
        case 12: if abs(getc(argument0.x)-getc(x))+abs(getc(argument0.y)-getc(y)) <= 1 && ds_grid_get(obj_control.unitgrid,getc(x),getc(y)).melee = 0 ds_list_add(other.location,id); break;
        case 13: if abs(getc(argument0.x)-getc(x))+abs(getc(argument0.y)-getc(y)) <= 6 && abs(getc(argument0.x)-getc(x))+abs(getc(argument0.y)-getc(y)) >= 3 ds_list_add(other.location,id); break;
        case 15: if abs(getc(argument0.x)-getc(x))+abs(getc(argument0.y)-getc(y)) <= 1 && ds_grid_get(obj_control.unitgrid,getc(x),getc(y)).melee = 0 ds_list_add(other.location,id); break;
        case 17: if abs(getc(argument0.x)-getc(x))+abs(getc(argument0.y)-getc(y)) <= 2 && (type = 1 || type = 4) ds_list_add(other.location,id); break;
        case 18: if abs(getc(argument0.x)-getc(x))+abs(getc(argument0.y)-getc(y)) <= 1 && ds_grid_get(obj_control.unitgrid,getc(x),getc(y)).melee = 0 ds_list_add(other.location,id); break;
        case 19: if abs(getc(argument0.x)-getc(x))+abs(getc(argument0.y)-getc(y)) <= 2 && ds_grid_get(obj_control.unitgrid,getc(x),getc(y)).melee = 0 && ds_grid_get(obj_control.unitgrid,getc(x),getc(y)).flying = 0 ds_list_add(other.location,id); break;
        case 22: if abs(getc(argument0.x)-getc(x))+abs(getc(argument0.y)-getc(y)) <= 2 && ds_grid_get(obj_control.unitgrid,getc(x),getc(y)).melee = 0 ds_list_add(other.location,id); break;
        case 23: if abs(getc(argument0.x)-getc(x))+abs(getc(argument0.y)-getc(y)) <= 1 && ds_grid_get(obj_control.unitgrid,getc(x),getc(y)).melee = 0 ds_list_add(other.location,id); break;
    }
    }
}
