function ossafe_file_text_readln(arg0)
{
	if (!global.is_console)
	{
		return file_text_readln(arg0);
	}
	else
	{
		var handle = arg0;
		ds_map_set(handle, "line_read", false);
		var line = ds_map_set_post(handle, "line", ds_map_find_value(handle, "line") + 1);
		if (line >= ds_map_find_value(handle, "num_lines"))
			return "";
		text = ds_map_find_value(handle, "text");
		return text[line] + "\r\n";
	}
}
