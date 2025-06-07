function ossafe_file_text_writeln(arg0)
{
	if (!global.is_console)
	{
		return file_text_writeln(arg0);
	}
	else
	{
		var handle = arg0;
		ds_map_set(handle, "data", ds_map_find_value(handle, "data") + "\r\n");
	}
}
