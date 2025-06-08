function c_msgnextloc(arg0, arg1)
{
	var str = arg0;
	var localized_string_id = arg1;
	if (!is_english())
		str = scr_84_get_lang_string(localized_string_id);
	c_msgnext(str);
}
