function ossafe_file_text_write_string(arg0, arg1)
{
	if (!global.is_console)
	{
		return file_text_write_string(arg0, arg1);
	}
	else
	{
		var handle = arg0;
		ds_map_set(handle, "data", ds_map_find_value(handle, "data") + arg1);
	}
}
