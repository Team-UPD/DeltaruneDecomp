function ossafe_file_text_close(arg0)
{
	if (!global.is_console)
	{
		return file_text_close(arg0);
	}
	else
	{
		var handle = arg0;
		if (ds_map_find_value(handle, "is_write"))
			ds_map_set(global.savedata, ds_map_find_value(handle, "filename"), ds_map_find_value(handle, "data"));
		ds_map_destroy(handle);
	}
}
