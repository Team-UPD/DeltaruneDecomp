function ossafe_file_delete(arg0)
{
	if (!global.is_console)
		return file_delete(arg0);
	else if (!is_undefined(ds_map_find_value(global.savedata, arg0)))
		ds_map_delete(global.savedata, arg0);
}
