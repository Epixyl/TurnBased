with obj_tile instance_destroy();
for(i = 0; i < 16; i++){
    for(j = 0; j < 16; j++){
        IDN = instance_create(32+i*32,32+j*32,obj_tile);
        IDN.type = obj_control.units[i,j];
    }
}
