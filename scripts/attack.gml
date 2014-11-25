var temp, ID;
if obj_control.animate = -1{
    temp = argument1.hp;
    if argument0.scalingatk = 1{
        if argument0.type = 3 argument1.hp -= argument0.atk*(0.5+0.5*argument1.living);
        else if argument0.type = 7 argument1.hp -= argument0.atk*(1.5-0.5*argument1.living);
        else if argument0.type = 6 argument1.hp -= argument0.atk*(1+0.5*argument1.flying);
        else if argument1.type = 17 && argument0.missiles = 0 argument1.hp -= 0;
        else argument1.hp -= argument0.atk;
    }
    else argument1.hp -= argument0.atk;
    if argument1.hp <= 0 argument1.hp = 0;
    ID = instance_create(argument1.x,argument1.y,obj_effect);
    ID.type = 2;
    ID.value = ceil(temp-argument1.hp);
}
else
{
    IDI = instance_create(argument0.x+16,argument0.y+16,obj_bullet);
    IDI.dirx = argument1.x;
    IDI.diry = argument1.y;
    IDI.dirspd = 2;
    IDI.target = argument1.id;
    IDI.from = argument0.id;
    IDI.type = argument0.type;
    if argument0.scalingatk = 1{
        if argument0.type = 3 IDI.atk = argument0.atk*(0.5+0.5*argument1.living);
        else if argument0.type = 7 IDI.atk = argument0.atk*(1.5-0.5*argument1.living);
        else if argument0.type = 6 argument1.hp -= argument0.atk*(1+0.5*argument1.flying);
        else if argument1.type = 17 && argument0.missiles = 0 argument1.hp -= 0;
        else IDI.atk = argument0.atk;
    }
    else IDI.atk = argument0.atk;
}
