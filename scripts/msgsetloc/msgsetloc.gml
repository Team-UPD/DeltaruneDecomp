function msgsetloc(arg0, arg1, arg2)
{
	var msg_index = arg0;
	var str = arg1;
	var localized_string_id = arg2;
	if (!is_english())
		str = scr_84_get_lang_string(localized_string_id);
	msgset(msg_index, str);
}
