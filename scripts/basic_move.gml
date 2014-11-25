with obj_ground{
    switch argument0.type{
        case 2: if abs(getc(argument0.x)-getc(x))+abs(getc(argument0.y)-getc(y)) <= 2 state = 1; break;
        case 3: if abs(getc(argument0.x)-getc(x))+abs(getc(argument0.y)-getc(y)) <= 2 state = 1; break;
        case 4: if abs(getc(argument0.x)-getc(x))+abs(getc(argument0.y)-getc(y)) <= 3 state = 1; break;
        case 5: if abs(getc(argument0.x)-getc(x))+abs(getc(argument0.y)-getc(y)) <= 2 state = 1; break;
        case 6: if abs(getc(argument0.x)-getc(x))+abs(getc(argument0.y)-getc(y)) <= 2 state = 1; break;
        case 7: if abs(getc(argument0.x)-getc(x))+abs(getc(argument0.y)-getc(y)) <= 3 state = 1; break;
        case 9: if abs(getc(argument0.x)-getc(x))+abs(getc(argument0.y)-getc(y)) <= 5 state = 1; break;
        case 12: if abs(getc(argument0.x)-getc(x))+abs(getc(argument0.y)-getc(y)) <= 4 state = 1; break;
        case 13: if abs(getc(argument0.x)-getc(x))+abs(getc(argument0.y)-getc(y)) <= 3 state = 1; break;
        case 15: if abs(getc(argument0.x)-getc(x))+abs(getc(argument0.y)-getc(y)) <= 4 state = 1; break;
    }
}
