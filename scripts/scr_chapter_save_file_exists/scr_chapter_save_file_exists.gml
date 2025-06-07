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

function scr_get_ini_value(arg0, arg1, arg2)
{
	var _ini_file = ossafe_ini_open("dr.ini");
	var _ini_value = ini_read_real(scr_ini_chapter(arg0, arg1), arg2, 0);
	ossafe_ini_close();
	return _ini_value;
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

function scr_store_ura_result(arg0, arg1, arg2)
{
	if (arg2 == 0)
		exit;
	var slot = arg1;
	if (slot > 2)
		slot -= 3;
	var current_result = scr_get_ura_value(arg0, arg1);
	var new_result = arg2;
	if ((arg2 + current_result) == 3)
		new_result = 3;
	scr_set_ura_value(arg0, arg1, new_result);
}
