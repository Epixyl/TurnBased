
mapid = ds_map_create();
queueid = ds_priority_create();
currx = argument0;
curry = argument1;
mp = argument2;
dx[3] = 32;
dx[2] = 0;
dx[1] = -32;
dx[0] = 0;
dy[3] = 0;
dy[2] = 32;
dy[1] = 0;
dy[0] = -32;
ds_priority_add(queueid, 1000000*mp+1000*currx+curry, mp);
ds_map_add(mapid, 1000*currx+curry,1);
while(ds_priority_empty(queueid) == false){
    unwrap = ds_priority_delete_max(queueid);
    if(ds_map_exists(mapid, unwrap) == false){
        mptemp = floor(unwrap/1000000);
        xtemp = floor(unwrap/1000) mod 1000;
        ytemp = unwrap mod 1000;
        
        groundid = ds_grid_get(obj_control.groundgrid,getc(xtemp),getc(ytemp));
        if groundid > 0 groundid.state = argument3;
         
        for(i = 0; i < 4; i++;){
            groundid = ds_grid_get(obj_control.groundgrid,getc(xtemp+dx[i]),getc(ytemp+dy[i]));
            if groundid > 0{
            if other.flying = 0{
            switch(groundid.type){
                case 0: 
                    movecost = 6;
                    if other.water = 1 movecost = 999; 
                break;
                case 1: 
                    movecost = 999;
                    if other.living = 1 movecost = 12;
                    if other.water = 1 movecost = 6;
                    if other.type = 5 movecost = 6;
                break;
                case 2: movecost = 4; 
                    if other.type = 5 movecost = 6;
                break;
                case 3: 
                    movecost = 12;
                    if other.living = 0 movecost = 999;
                    if other.type = 5 movecost = 6;
                break;
                case 4: 
                    movecost = 999; 
                    if other.water = 1 movecost = 6;
                break;
                case 5: 
                    movecost = 9;
                    if other.water = 1 movecost = 999; 
                    if other.type = 5 movecost = 6;
                break;
                case 6:
                    movecost = 999;
                break;
            }
            }
            else movecost = 6;
            }
            tileid = ds_grid_get(obj_control.unitgrid,getc(xtemp+dx[i]),getc(ytemp+dy[i]));
            if(tileid > 0){
            if (obj_control.turn*tileid.side == -1 && argument3 = 1)
                movecost = 999;
            }
            mptemp2 = mptemp - movecost;
            if(mptemp2 >= 0){
            ds_priority_add(queueid, 1000000*mptemp2+1000*(xtemp+dx[i])+(ytemp+dy[i]),mptemp2);
            }
        }
        ds_map_add(mapid, unwrap, 0);
    }
}
ds_map_destroy(mapid);
ds_priority_destroy(queueid);
