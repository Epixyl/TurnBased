var k;
var a;
with obj_tile instance_destroy();
with obj_ground instance_destroy();
k = file_text_open_read(working_directory + "\"+argument0);
//map
nn = file_text_read_string(k);
if string_char_at(nn,1) = "!" || string_char_at(nn,1) = "*" || string_char_at(nn,1) = "w" || string_char_at(nn,1) = "l"{
    while nn != "*"{
        if string_char_at(nn,1) = "!"   ds_list_add(obj_control.textlist,string_copy(nn,2,string_length(nn)-1));
        if string_char_at(nn,1) = "w"   ds_list_add(obj_control.winlist,string_copy(nn,2,string_length(nn)-1));
        if string_char_at(nn,1) = "l"   ds_list_add(obj_control.loselist,string_copy(nn,2,string_length(nn)-1));
        file_text_readln(k);
        nn = file_text_read_string(k);
    }
    instance_create(32,32,obj_maptext);
    file_text_readln(k);
}else{
    file_text_close(k);
    k = file_text_open_read(working_directory + "\"+argument0);
}

for(i = 0; i< 16; i++){
    mapstring = file_text_read_string(k);
    for(j = 0; j < 16; j++){
        ID = instance_create(j*32+32,i*32+32,obj_ground);
        ds_grid_set(obj_control.groundgrid,j,i,ID);
        e = string_char_at(mapstring,j+1);
        if e != "b" && e != "h" && e!= "n" && e!= "t" && e != "v"
            && e!= "u" && e!= "p" && e!= "q" && e!= "r" && e!= "w"
            && e!= "a" && e!= "e" && e!= "g" && e!= "j" && e!= "y"{
            ID.type = real(e);
        }
        else
        {
            ID.type = 0;
            IDD = instance_create(j*32+32,i*32+32,obj_tile);
            ds_grid_set(obj_control.unitgrid,j,i,IDD);
            IDD.side = 0;
            switch e{
                case "b": IDD.type = 8; break;
                case "p": IDD.type = 8; IDD.side = 1; break;
                case "q": IDD.type = 8; IDD.side = -1; break;
                case "h": IDD.type = 14; break;
                case "j": IDD.type = 14; IDD.side = 1; break;
                case "y": IDD.type = 14; IDD.side = -1; break;
                case "n": IDD.type = 1; IDD.side = 1; IDD.value = 2; break;
                case "u": IDD.type = 1; IDD.side = -1; break;
                case "t": IDD.type = 11; break;
                case "v": IDD.type = 10; break;
                case "r": IDD.type = 10; IDD.side = 1; break;
                case "w": IDD.type = 10; IDD.side = -1; break;
                case "a": IDD.type = 21; break;
                case "e": IDD.type = 21; IDD.side = 1; break;
                case "g": IDD.type = 21; IDD.side = -1; break;
                default: break;
            }
            get_stats(IDD);
        }
    }
    file_text_readln(k);
}
//ai
a = file_text_read_string(k);
if a = "a" obj_control.ai = 1; else obj_control.ai = 0;

//units
file_text_readln(k);
a = file_text_read_string(k);
while a != "end"{
    IDO = instance_create(x,y,obj_tile);
    IDO.side = 0;
    if string_char_at(a,1) = "r" IDO.side = 1; 
    if string_char_at(a,1) = "b" IDO.side = -1;
    IDO.x = 32+32*real(string_char_at(a,2)+string_char_at(a,3));
    IDO.y = 32+32*real(string_char_at(a,4)+string_char_at(a,5));
    IDO.type = real(string_char_at(a,6)+string_char_at(a,7));
    ds_grid_set(obj_control.unitgrid,getc(IDO.x),getc(IDO.y),IDO);
    get_stats(IDO);
    file_text_readln(k);
    a = file_text_read_string(k);
}
file_text_close(k);

