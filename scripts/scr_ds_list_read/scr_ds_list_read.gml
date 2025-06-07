function scr_ds_list_read(arg0)
{
	var new_list = ds_list_create();
	var list_string = ossafe_file_text_read_string(arg0);
	if (list_string != "")
		ds_list_read(new_list, list_string);
	return new_list;
}
