function ossafe_savedata_load()
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
		global.savedata_buffer = buffer_create(1, buffer_grow, 1);
		buffer_load_async(global.savedata_buffer, "deltarune.sav", 0, -1);
		global.savedata_async_load = true;
		global.savedata_debuginfo = "load in progress";
		global.savedata_async_id = buffer_async_group_end();
	}
}

function ossafe_savedata_title_exists(arg0)
{
	var _title = "n/a";
	for (var i = 0; i < array_length(arg0); i++)
	{
		var title = arg0[i];
		if (ossafe_savedata_load_title(title) == "save_loading")
		{
			_title = title;
			break;
		}
	}
	return _title;
}

function ossafe_savedata_load_title(arg0 = -1)
{
	if (scr_is_switch_os())
		return ossafe_savedata_load_switch_title(arg0);
	else if (os_type == os_ps4 || os_type == os_ps5)
		return ossafe_savedata_load_ps4_title(arg0);
	else
		return "save_not_found";
}

function ossafe_savedata_load_ps4_title(arg0 = -1)
{
	if (!global.is_console)
	{
	}
	else
	{
		if (global.savedata_async_id >= 0 || global.savedata_async_load)
			return 0;
		if (arg0 == -1)
			return "save_not_found";
		var title_id = arg0.title_id;
		var fingerprint = arg0.fingerprint;
		var save_file_format = arg0.save_data_file;
		var slottitle = save_file_format.slottitle;
		var filename = save_file_format.filename;
		var slot_size = 31457280;
		buffer_async_group_begin("Deltarune");
		buffer_async_group_option("showdialog", 0);
		buffer_async_group_option("savepadindex", 0);
		buffer_async_group_option("slottitle", slottitle);
		buffer_async_group_option("subtitle", "DELTARUNE Save Data");
		buffer_async_group_option("saveslotsize", slot_size);
		buffer_async_group_option("ps4_titleid", title_id);
		buffer_async_group_option("ps4_fingerprint", fingerprint);
		global.savedata_buffer = buffer_create(1, buffer_grow, 1);
		buffer_load_async(global.savedata_buffer, filename, 0, -1);
		global.savedata_async_load = true;
		global.savedata_debuginfo = "load in progress";
		global.savedata_async_id = buffer_async_group_end();
		buffer_async_group_option("ps4_titleid", "");
		buffer_async_group_option("ps4_fingerprint", "");
		return "save_loading";
	}
}

function ossafe_savedata_load_switch_title(arg0 = -1)
{
	if (!global.is_console)
	{
	}
	else
	{
		if (global.savedata_async_id >= 0 || global.savedata_async_load)
			return 0;
		if (arg0 == -1)
			return 0;
		var app_id = arg0.app_id;
		switch_save_data_unmount();
		if (switch_save_data_mount(global.switchlogin, app_id) >= 0)
		{
			var save_file_format = arg0.save_data_file;
			var slottitle = save_file_format.slottitle;
			var filename = save_file_format.filename;
			var slot_size = 31457280;
			buffer_async_group_begin("Deltarune");
			buffer_async_group_option("showdialog", 0);
			buffer_async_group_option("savepadindex", 0);
			buffer_async_group_option("slottitle", slottitle);
			buffer_async_group_option("subtitle", "DELTARUNE Save Data");
			buffer_async_group_option("saveslotsize", slot_size);
			global.savedata_buffer = buffer_create(1, buffer_grow, 1);
			buffer_load_async(global.savedata_buffer, filename, 0, -1);
			global.savedata_async_load = true;
			global.savedata_debuginfo = "load in progress";
			global.savedata_async_id = buffer_async_group_end();
			return "save_loading";
		}
		else
		{
			return "save_not_found";
		}
	}
}
