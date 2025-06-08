function scr_84_get_lang_string(arg0)
{
	var lang_string_id = arg0;
	var str = ds_map_find_value(global.lang_map, lang_string_id);
	if (is_undefined(str))
	{
		if (!ds_map_find_value(global.lang_missing_map, lang_string_id))
			ds_map_add(global.lang_missing_map, lang_string_id, true);
		str = "--missing-string--";
	}
	return str;
}
