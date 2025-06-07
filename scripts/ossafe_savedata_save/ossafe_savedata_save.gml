function ossafe_savedata_save()
{
	if (!global.is_console)
	{
	}
	else
	{
		if (global.savedata_async_id >= 0 || global.savedata_async_load)
			return 0;
		var slot_size = 31457280;
		buffer_async_group_begin("Deltarune");
		buffer_async_group_option("showdialog", 0);
		buffer_async_group_option("savepadindex", 0);
		buffer_async_group_option("slottitle", "DELTARUNE");
		buffer_async_group_option("subtitle", "DELTARUNE Save Data");
		buffer_async_group_option("saveslotsize", slot_size);
		var json = json_encode(global.savedata);
		global.savedata_buffer = buffer_create(string_byte_length(json) + 1, buffer_grow, 1);
		buffer_write(global.savedata_buffer, buffer_string, json);
		buffer_save_async(global.savedata_buffer, "deltarune.sav", 0, buffer_get_size(global.savedata_buffer));
		global.savedata_async_load = false;
		global.savedata_debuginfo = "save in progress";
		global.savedata_async_id = buffer_async_group_end();
	}
}
