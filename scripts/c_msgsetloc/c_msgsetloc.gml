function c_msgsetloc(arg0, arg1, arg2)
{
	var msg_index = arg0;
	var english = arg1;
	var localized_string_id = arg2;
	var str = english;
	if (!is_english())
		str = scr_84_get_lang_string(localized_string_id);
	c_msgset(msg_index, str);
}
