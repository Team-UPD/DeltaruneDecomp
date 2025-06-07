function scr_84_load_map_json(arg0)
{
	var filename = arg0;
	if (file_exists(filename))
	{
		var file_buffer = buffer_load(filename);
		var json = buffer_read(file_buffer, buffer_string);
		buffer_delete(file_buffer);
		return json_decode(json);
	}
	else
	{
	}
}
