function ossafe_file_text_open_read(arg0)
{
	if (!global.is_console)
	{
		return file_text_open_read(arg0);
	}
	else
	{
		var name = string_lower(arg0);
		var file = ds_map_find_value(global.savedata, name);
		if (is_undefined(file))
			return undefined;
		var data = file;
		var num_lines = 0;
		var lines;
		while (string_byte_length(data) > 0)
		{
			var newline_pos = string_pos("\n", data);
			var line;
			if (newline_pos > 0)
			{
				var nextline_pos = newline_pos + 1;
				if (newline_pos > 1 && string_char_at(data, newline_pos - 1) == "\r")
					newline_pos--;
				if (newline_pos > 1)
					line = substr(data, 1, newline_pos - 1);
				else
					line = "";
				if (nextline_pos <= strlen(data))
					data = substr(data, nextline_pos);
				else
					data = "";
			}
			else
			{
				line = data;
				data = "";
			}
			lines[num_lines++] = line;
		}
		handle = ds_map_create();
		ds_map_set(handle, "is_write", false);
		ds_map_set(handle, "text", lines);
		ds_map_set(handle, "num_lines", num_lines);
		ds_map_set(handle, "line", 0);
		ds_map_set(handle, "line_read", false);
		return handle;
	}
}
