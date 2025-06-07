if (ds_map_find_value(async_load, "id") == global.savedata_async_id)
{
	global.savedata_async_id = -1;
	if (global.savedata_async_load)
	{
		global.savedata_async_load = false;
		if (ds_map_find_value(async_load, "status") == -1)
		{
			global.savedata_error = true;
			global.savedata_debuginfo = "load failed: " + string(ds_map_find_value(async_load, "status"));
			global.savedata = ds_map_create();
		}
		else
		{
			global.savedata_error = false;
			global.savedata_debuginfo = "load succeeded";
			var json = buffer_read(global.savedata_buffer, buffer_string);
			global.savedata = json_decode(json);
		}
		buffer_delete(global.savedata_buffer);
		global.savedata_buffer = undefined;
		if (_load_state == (0 << 0))
		{
			if (scr_is_switch_os())
			{
				if (!ossafe_file_exists("dr.ini"))
				{
					var prev_title = ossafe_savedata_title_exists(_full_titles);
					if (prev_title != "n/a")
					{
						_load_state = (1 << 0);
						_pending_title = prev_title;
					}
					else
					{
						prev_title = ossafe_savedata_title_exists(_demo_titles);
						if (prev_title != "n/a")
						{
							_load_state = (2 << 0);
							_pending_title = prev_title;
						}
						else
						{
							load_default_settings();
							audio_group_load(0);
							create_new_save_file();
							_parent.trigger_event("init_complete");
						}
					}
				}
				else
				{
					load_default_settings();
					audio_group_load(0);
					if (ossafe_file_exists("true_config.ini"))
					{
						ossafe_ini_open("true_config.ini");
						global.lang = ini_read_string("LANG", "LANG", global.lang);
						ossafe_ini_close();
					}
					if (!scr_has_ura_data())
					{
						for (var i = 0; i < (4 << 0); i++)
						{
							var chapter = i + 1;
							scr_convert_ura_data(chapter);
						}
					}
					_parent.trigger_event("init_complete");
				}
			}
			if (os_type == os_ps4 || os_type == os_ps5)
			{
				if (!ossafe_file_exists("dr.ini"))
				{
					var prev_title = dequeue_full_title();
					if (prev_title != "n/a")
					{
						ossafe_savedata_load_title(prev_title);
						_load_state = (1 << 0);
						_pending_title = prev_title;
					}
					else
					{
						prev_title = dequeue_demo_title();
						if (prev_title != "n/a")
						{
							ossafe_savedata_load_title(prev_title);
							_load_state = (2 << 0);
							_pending_title = prev_title;
						}
						else
						{
							load_default_settings();
							audio_group_load(0);
							create_new_save_file();
							_parent.trigger_event("init_complete");
						}
					}
				}
				else
				{
					load_default_settings();
					audio_group_load(0);
					if (ossafe_file_exists("true_config.ini"))
					{
						ossafe_ini_open("true_config.ini");
						global.lang = ini_read_string("LANG", "LANG", global.lang);
						ossafe_ini_close();
					}
					if (!scr_has_ura_data())
					{
						for (var i = 0; i < (4 << 0); i++)
						{
							var chapter = i + 1;
							scr_convert_ura_data(chapter);
						}
					}
					_parent.trigger_event("init_complete");
				}
			}
		}
		else if (_load_state == (1 << 0))
		{
			if (scr_is_switch_os())
			{
				_pending_titles[array_length(_pending_titles)] = new scr_pending_save_data(_pending_title, global.savedata);
				var prev_title = ossafe_savedata_title_exists(_demo_titles);
				if (prev_title != "n/a")
				{
					_load_state = (2 << 0);
					_pending_title = prev_title;
				}
				else
				{
					load_default_settings();
					audio_group_load(0);
					_parent.trigger_event("load_prompt", _pending_titles);
				}
			}
			if (os_type == os_ps4 || os_type == os_ps5)
			{
				if (ossafe_file_exists("dr.ini"))
				{
					_pending_titles[array_length(_pending_titles)] = new scr_pending_save_data(_pending_title, global.savedata);
					var prev_title = dequeue_demo_title();
					if (prev_title != "n/a")
					{
						ossafe_savedata_load_title(prev_title);
						_load_state = (2 << 0);
						_pending_title = prev_title;
					}
					else
					{
						load_default_settings();
						audio_group_load(0);
						_parent.trigger_event("load_prompt", _pending_titles);
					}
				}
				else
				{
					var prev_title = dequeue_full_title();
					if (prev_title != "n/a")
					{
						ossafe_savedata_load_title(prev_title);
						_load_state = (1 << 0);
						_pending_title = prev_title;
					}
					else
					{
						prev_title = dequeue_demo_title();
						if (prev_title != "n/a")
						{
							ossafe_savedata_load_title(prev_title);
							_load_state = (2 << 0);
							_pending_title = prev_title;
						}
						else
						{
							load_default_settings();
							audio_group_load(0);
							create_new_save_file();
							_parent.trigger_event("init_complete");
						}
					}
				}
			}
		}
		else if (_load_state == (2 << 0))
		{
			if (scr_is_switch_os())
			{
				_pending_titles[array_length(_pending_titles)] = new scr_pending_save_data(_pending_title, global.savedata);
				load_default_settings();
				audio_group_load(0);
				_parent.trigger_event("load_prompt", _pending_titles);
			}
			if (os_type == os_ps4 || os_type == os_ps5)
			{
				if (ossafe_file_exists("dr.ini"))
				{
					_pending_titles[array_length(_pending_titles)] = new scr_pending_save_data(_pending_title, global.savedata);
					load_default_settings();
					audio_group_load(0);
					_parent.trigger_event("load_prompt", _pending_titles);
				}
				else
				{
					var prev_title = dequeue_demo_title();
					if (prev_title != "n/a")
					{
						ossafe_savedata_load_title(prev_title);
						_load_state = (2 << 0);
						_pending_title = prev_title;
					}
					else if (array_length(_pending_titles) > 0)
					{
						load_default_settings();
						audio_group_load(0);
						_parent.trigger_event("load_prompt", _pending_titles);
					}
					else
					{
						load_default_settings();
						audio_group_load(0);
						create_new_save_file();
						_parent.trigger_event("init_complete");
					}
				}
			}
		}
	}
	else
	{
		if (ds_map_find_value(async_load, "status") == false)
		{
			global.savedata_error = true;
			global.savedata_debuginfo = "save failed: " + string(ds_map_find_value(async_load, "status"));
			if (global.savedata_async_load)
			{
				global.savedata = ds_map_create();
				global.savedata_async_load = false;
			}
		}
		else
		{
			global.savedata_error = false;
			global.savedata_debuginfo = "save succeeded";
			if (scr_is_switch_os())
				switch_save_data_commit();
			show_debug_message("-- ASYNC SAVE EVENT: " + string(global.savedata_debuginfo));
		}
		buffer_delete(global.savedata_buffer);
		global.savedata_buffer = undefined;
	}
}
