function scr_chapter_save_file_exists(arg0)
{
	var _exists = false;
	for (var i = 0; i < 3; i++)
	{
		_exists = ossafe_file_exists("filech" + string(arg0) + "_" + string(i));
		if (_exists == true)
			break;
	}
	return _exists;
}

function scr_chapter_save_file_exists_in_slot(arg0, arg1)
{
	var _exists = ossafe_file_exists("filech" + string(arg0) + "_" + string(arg1));
	return _exists;
}

function scr_completed_chapter_any_slot(arg0)
{
	var _file_exists = false;
	for (var i = 0; i < 3; i++)
	{
		if (ossafe_file_exists("filech" + string(arg0) + "_" + string(i + 3)))
		{
			_file_exists = true;
			break;
		}
	}
	return _file_exists;
}

function scr_completed_chapter_in_slot(arg0, arg1)
{
	var _file_exists = ossafe_file_exists("filech" + string(arg0) + "_" + string(arg1 + 3));
	return _file_exists;
}

function scr_fought_secret_boss_any_slot(arg0)
{
	var _fought = false;
	for (var i = 0; i < 3; i++)
	{
		var _slot = i;
		var _result = scr_get_ura_value(arg0, _slot);
		if (_result > 0)
		{
			_fought = true;
			break;
		}
	}
	return _fought;
}

function scr_get_ini_value(arg0, arg1, arg2)
{
	var _ini_file = ossafe_ini_open("dr.ini");
	var _ini_value = ini_read_real(scr_ini_chapter(arg0, arg1), arg2, 0);
	ossafe_ini_close();
	return _ini_value;
}

function scr_set_ini_value(arg0, arg1, arg2, arg3)
{
	var iniwrite = ossafe_ini_open("dr.ini");
	ini_write_real(scr_ini_chapter(arg0, arg1), arg2, arg3);
	ossafe_ini_close();
}

function scr_get_ini_value_all_slots(arg0, arg1)
{
	var _ini_file = ossafe_ini_open("dr.ini");
	var _list = [];
	for (var i = 0; i < 6; i++)
	{
		var _slot = i;
		var _value = ini_read_real(scr_ini_chapter(arg0, _slot), arg1, 0);
		_list[i][0] = _slot;
		_list[i][1] = _value;
	}
	ossafe_ini_close();
	return _list;
}

function scr_is_chapter_revealed(arg0)
{
	if (arg0 == (1 << 0))
		return true;
	var completed_previous = scr_completed_chapter_any_slot(arg0 - 1);
	var completed_current = scr_completed_chapter_any_slot(arg0);
	var in_progress = scr_chapter_save_file_exists(arg0);
	return completed_previous || completed_current || in_progress;
}

function get_highest_revealed_chapter()
{
	var highest_revealed = (1 << 0);
	for (var i = 0; i < (4 << 0); i++)
	{
		var chapter = i + 1;
		if (!scr_is_chapter_revealed(chapter))
			break;
		if (chapter > highest_revealed)
			highest_revealed = chapter;
	}
	return highest_revealed;
}

function scr_has_ura_data()
{
	var _ini_file = ossafe_ini_open("dr.ini");
	var _exists = ini_section_exists("URA");
	ossafe_ini_close();
	return _exists;
}

function scr_convert_ura_data(arg0)
{
	var _result_list = [];
	for (var k = 0; k < 3; k++)
	{
		ossafe_ini_open("dr.ini");
		var ura_data_exists = ini_key_exists(scr_ini_chapter(1, k), "UraBoss");
		ossafe_ini_close();
		if (ura_data_exists)
			continue;
		if (ossafe_file_exists("filech1_" + string(k)))
		{
			var jevil_status = 0;
			var file = "filech1_" + string(k);
			var myfileid = ossafe_file_text_open_read(file);
			ossafe_file_text_read_string(myfileid);
			ossafe_file_text_readln(myfileid);
			if (!global.is_console)
			{
				for (var i = 0; i < 6; i += 1)
				{
					ossafe_file_text_read_string(myfileid);
					ossafe_file_text_readln(myfileid);
				}
			}
			else
			{
				var othername_list = scr_ds_list_read(myfileid);
				ds_list_destroy(othername_list);
				ossafe_file_text_readln(myfileid);
			}
			ossafe_file_text_read_real(myfileid);
			ossafe_file_text_readln(myfileid);
			ossafe_file_text_read_real(myfileid);
			ossafe_file_text_readln(myfileid);
			ossafe_file_text_read_real(myfileid);
			ossafe_file_text_readln(myfileid);
			ossafe_file_text_read_real(myfileid);
			ossafe_file_text_readln(myfileid);
			ossafe_file_text_read_real(myfileid);
			ossafe_file_text_readln(myfileid);
			ossafe_file_text_read_real(myfileid);
			ossafe_file_text_readln(myfileid);
			ossafe_file_text_read_real(myfileid);
			ossafe_file_text_readln(myfileid);
			ossafe_file_text_read_real(myfileid);
			ossafe_file_text_readln(myfileid);
			ossafe_file_text_read_real(myfileid);
			ossafe_file_text_readln(myfileid);
			if (global.is_console)
			{
				var hp_list = scr_ds_list_read(myfileid);
				ds_list_destroy(hp_list);
				ossafe_file_text_readln(myfileid);
				var maxhp_list = scr_ds_list_read(myfileid);
				ds_list_destroy(maxhp_list);
				ossafe_file_text_readln(myfileid);
				var at_list = scr_ds_list_read(myfileid);
				ds_list_destroy(at_list);
				ossafe_file_text_readln(myfileid);
				var df_list = scr_ds_list_read(myfileid);
				ds_list_destroy(df_list);
				ossafe_file_text_readln(myfileid);
				var mag_list = scr_ds_list_read(myfileid);
				ds_list_destroy(mag_list);
				ossafe_file_text_readln(myfileid);
				var guts_list = scr_ds_list_read(myfileid);
				ds_list_destroy(guts_list);
				ossafe_file_text_readln(myfileid);
				var charweapon_list = scr_ds_list_read(myfileid);
				ds_list_destroy(charweapon_list);
				ossafe_file_text_readln(myfileid);
				var chararmor1_list = scr_ds_list_read(myfileid);
				ds_list_destroy(chararmor1_list);
				ossafe_file_text_readln(myfileid);
				var chararmor2_list = scr_ds_list_read(myfileid);
				ds_list_destroy(chararmor2_list);
				ossafe_file_text_readln(myfileid);
				var weaponstyle_list = scr_ds_list_read(myfileid);
				ds_list_destroy(weaponstyle_list);
				ossafe_file_text_readln(myfileid);
			}
			for (var i = 0; i < 4; i += 1)
			{
				if (!global.is_console)
				{
					file_text_read_real(myfileid);
					file_text_readln(myfileid);
					file_text_read_real(myfileid);
					file_text_readln(myfileid);
					file_text_read_real(myfileid);
					file_text_readln(myfileid);
					file_text_read_real(myfileid);
					file_text_readln(myfileid);
					file_text_read_real(myfileid);
					file_text_readln(myfileid);
					file_text_read_real(myfileid);
					file_text_readln(myfileid);
					file_text_read_real(myfileid);
					file_text_readln(myfileid);
					file_text_read_real(myfileid);
					file_text_readln(myfileid);
					file_text_read_real(myfileid);
					file_text_readln(myfileid);
					file_text_read_real(myfileid);
					file_text_readln(myfileid);
				}
				for (var q = 0; q < 4; q += 1)
				{
					ossafe_file_text_read_real(myfileid);
					ossafe_file_text_readln(myfileid);
					ossafe_file_text_read_real(myfileid);
					ossafe_file_text_readln(myfileid);
					ossafe_file_text_read_real(myfileid);
					ossafe_file_text_readln(myfileid);
					ossafe_file_text_read_real(myfileid);
					ossafe_file_text_readln(myfileid);
					ossafe_file_text_read_real(myfileid);
					ossafe_file_text_readln(myfileid);
					ossafe_file_text_read_real(myfileid);
					ossafe_file_text_readln(myfileid);
					ossafe_file_text_read_real(myfileid);
					ossafe_file_text_readln(myfileid);
					ossafe_file_text_read_real(myfileid);
					ossafe_file_text_readln(myfileid);
				}
				for (var j = 0; j < 12; j += 1)
				{
					ossafe_file_text_read_real(myfileid);
					ossafe_file_text_readln(myfileid);
				}
			}
			ossafe_file_text_read_real(myfileid);
			ossafe_file_text_readln(myfileid);
			ossafe_file_text_read_real(myfileid);
			ossafe_file_text_readln(myfileid);
			ossafe_file_text_read_real(myfileid);
			ossafe_file_text_readln(myfileid);
			if (global.is_console)
			{
				var item_list = scr_ds_list_read(myfileid);
				ds_list_destroy(item_list);
				ossafe_file_text_readln(myfileid);
				var keyitem_list = scr_ds_list_read(myfileid);
				ds_list_destroy(keyitem_list);
				ossafe_file_text_readln(myfileid);
				var weapon_list = scr_ds_list_read(myfileid);
				ds_list_destroy(weapon_list);
				ossafe_file_text_readln(myfileid);
				var armor_list = scr_ds_list_read(myfileid);
				ds_list_destroy(armor_list);
				ossafe_file_text_readln(myfileid);
			}
			else
			{
				for (var j = 0; j < 13; j += 1)
				{
					file_text_read_real(myfileid);
					file_text_readln(myfileid);
					file_text_read_real(myfileid);
					file_text_readln(myfileid);
					file_text_read_real(myfileid);
					file_text_readln(myfileid);
					file_text_read_real(myfileid);
					file_text_readln(myfileid);
				}
			}
			ossafe_file_text_read_real(myfileid);
			ossafe_file_text_readln(myfileid);
			ossafe_file_text_read_real(myfileid);
			ossafe_file_text_readln(myfileid);
			ossafe_file_text_read_real(myfileid);
			ossafe_file_text_readln(myfileid);
			ossafe_file_text_read_real(myfileid);
			ossafe_file_text_readln(myfileid);
			ossafe_file_text_read_real(myfileid);
			ossafe_file_text_readln(myfileid);
			ossafe_file_text_read_real(myfileid);
			ossafe_file_text_readln(myfileid);
			ossafe_file_text_read_real(myfileid);
			ossafe_file_text_readln(myfileid);
			ossafe_file_text_read_real(myfileid);
			ossafe_file_text_readln(myfileid);
			ossafe_file_text_read_real(myfileid);
			ossafe_file_text_readln(myfileid);
			ossafe_file_text_read_real(myfileid);
			ossafe_file_text_readln(myfileid);
			ossafe_file_text_read_real(myfileid);
			ossafe_file_text_readln(myfileid);
			ossafe_file_text_read_real(myfileid);
			ossafe_file_text_readln(myfileid);
			ossafe_file_text_read_real(myfileid);
			ossafe_file_text_readln(myfileid);
			if (global.is_console)
			{
				var litem_list = scr_ds_list_read(myfileid);
				ds_list_destroy(litem_list);
				ossafe_file_text_readln(myfileid);
				var phone_list = scr_ds_list_read(myfileid);
				ds_list_destroy(phone_list);
				ossafe_file_text_readln(myfileid);
				var flag_list = scr_ds_list_read(myfileid);
				for (var i = 0; i < 242; i += 1)
				{
					if (i == 241)
						jevil_status = ds_list_find_value(flag_list, i);
				}
				ds_list_destroy(flag_list);
				ossafe_file_text_readln(myfileid);
			}
			else
			{
				for (var i = 0; i < 8; i += 1)
				{
					file_text_read_real(myfileid);
					file_text_readln(myfileid);
					file_text_read_real(myfileid);
					file_text_readln(myfileid);
				}
				for (var i = 0; i < 242; i += 1)
				{
					if (i == 241)
					{
						jevil_status = file_text_read_real(myfileid);
						file_text_readln(myfileid);
					}
					else
					{
						file_text_read_real(myfileid);
						file_text_readln(myfileid);
					}
				}
			}
			ossafe_file_text_close(myfileid);
			var uraboss = 0;
			if (jevil_status == 6)
				uraboss = 1;
			else if (jevil_status == 7)
				uraboss = 2;
			scr_set_ini_value(1, k, "UraBoss", uraboss);
		}
	}
	for (var i = 0; i < 3; i++)
	{
		var result = scr_get_ini_value(arg0, i, "UraBoss");
		_result_list[array_length(_result_list)] = result;
	}
	for (var i = 0; i < 3; i++)
	{
		var current_result = _result_list[i];
		var new_result = current_result;
		var completed_result = scr_get_ini_value(arg0, i + 3, "UraBoss");
		if (current_result == 0)
		{
			if (completed_result > current_result)
				new_result = completed_result;
		}
		else if ((completed_result + current_result) == 3)
		{
			new_result = 3;
		}
		_result_list[i] = new_result;
	}
	for (var i = 0; i < array_length(_result_list); i++)
	{
		var result = _result_list[i];
		scr_set_ura_value(arg0, i, result);
	}
}

function scr_get_ura_value(arg0, arg1)
{
	var _ini_file = ossafe_ini_open("dr.ini");
	var _ini_value = ini_read_real("URA", string(arg0) + "_" + string(arg1), 0);
	ossafe_ini_close();
	return _ini_value;
}

function scr_set_ura_value(arg0, arg1, arg2)
{
	var _ini_file = ossafe_ini_open("dr.ini");
	var _ini_value = ini_write_real("URA", string(arg0) + "_" + string(arg1), arg2);
	ossafe_ini_close();
	return _ini_value;
}
