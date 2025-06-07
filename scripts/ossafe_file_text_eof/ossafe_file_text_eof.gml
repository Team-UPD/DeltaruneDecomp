function ossafe_file_text_eof(arg0)
{
	if (!global.is_console)
	{
		return file_text_eof(arg0);
	}
	else
	{
		var handle = arg0;
		return ds_map_find_value(handle, "line") >= ds_map_find_value(handle, "num_lines");
	}
}
