global.savedata_async_id = -1;
global.savedata_async_load = false;
global.savedata_error = false;
global.savedata_debuginfo = "";
global.savedata_pause = false;
global.savedata_app_id = -1;
global.lang = "en";
_parent = -4;
old_savedata_check = false;
_load_state = (0 << 0);
_pending_title = "n/a";
_pending_titles = [];
_full_titles = scr_get_supported_full_titles();
_demo_titles = scr_get_supported_demo_titles();

init = function(arg0, arg1)
{
	_parent = arg0;
	scr_ossafe_init();
	application_surface_enable(true);
	application_surface_draw_enable(false);
	if (scr_is_switch_os() && !variable_global_exists("switchlogin"))
	{
		global.switchlogin = arg1.switch_id;
		if (global.switchlogin >= 0)
		{
			switch_save_data_unmount();
			switch_save_data_mount(global.switchlogin);
		}
		while (global.switchlogin < 0)
			global.switchlogin = switch_accounts_select_account(true, false, false);
		if (!switch_accounts_is_user_open(global.switchlogin))
			switch_accounts_open_user(global.switchlogin);
	}
	if (scr_is_switch_os())
	{
		switch_controller_support_set_defaults();
		switch_controller_support_set_singleplayer_only(true);
		switch_controller_set_supported_styles(7);
		global.savedata_app_id = "n/a";
		switch_save_data_unmount();
		switch_save_data_mount(global.switchlogin);
	}
	if (os_type == os_ps4)
	{
		ps4_touchpad_mouse_enable(false);
		global.savedata_app_id = "n/a";
	}
	ossafe_savedata_load();
};

function load_default_settings()
{
	var _locale = os_get_language();
	var _lang;
	if (scr_is_switch_os())
		_lang = substr(switch_language_get_desired_language(), 1, 2);
	else
		_lang = (substr(_locale, 1, 2) != "ja") ? "en" : "ja";
	global.lang = _lang;
	if (!instance_exists(obj_input))
	{
		var _input = instance_create(0, 0, obj_input);
		_input.init();
	}
}

function create_new_save_file()
{
	global.savedata = ds_map_create();
	ossafe_ini_open("dr.ini");
	ossafe_ini_close();
	ossafe_ini_open("true_config.ini");
	ini_write_string("__DT", "__DT", string(date_current_datetime()));
	ossafe_ini_close();
	ossafe_savedata_save();
}

function convert_loaded_file()
{
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
	ossafe_ini_open("true_config.ini");
	ini_write_string("__DT", "__DT", string(date_current_datetime()));
	ossafe_ini_close();
	ossafe_savedata_save();
}

function dequeue_full_title()
{
	var title = "n/a";
	if (array_length(_full_titles) == 0)
		return title;
	title = _full_titles[0];
	var adjusted_list = [];
	for (var i = 0; i < array_length(_full_titles); i++)
	{
		if (_full_titles[i] == title)
			continue;
		adjusted_list[array_length(adjusted_list)] = _full_titles[i];
	}
	_full_titles = adjusted_list;
	return title;
}

function dequeue_demo_title()
{
	var title = "n/a";
	if (array_length(_demo_titles) == 0)
		return title;
	title = _demo_titles[0];
	var adjusted_list = [];
	for (var i = 0; i < array_length(_demo_titles); i++)
	{
		if (_demo_titles[i] == title)
			continue;
		adjusted_list[array_length(adjusted_list)] = _demo_titles[i];
	}
	_demo_titles = adjusted_list;
	return title;
}
