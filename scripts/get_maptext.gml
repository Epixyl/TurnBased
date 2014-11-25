var k;
ds_list_clear(obj_control.textlist);
k = file_text_open_read(working_directory + "\"+argument0);
//map
nn = file_text_read_string(k);
if string_char_at(nn,1) = "!" || string_char_at(nn,1) = "*"{
    while nn != "*"{
        ds_list_add(obj_control.textlist,string_copy(nn,2,string_length(nn)-1));
        file_text_readln(k);
        nn = file_text_read_string(k);
    }
    instance_create(32,32,obj_maptext);
    file_text_readln(k);
}
file_text_close(k);
