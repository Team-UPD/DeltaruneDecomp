function ossafe_file_text_open_write(arg0)
{
	if (!global.is_console)
	{
		return file_text_open_write(arg0);
	}
	else
	{
		var handle = ds_map_create();
		ds_map_set(handle, "is_write", true);
		ds_map_set(handle, "filename", string_lower(arg0));
		ds_map_set(handle, "data", "");
		return handle;
	}
}
