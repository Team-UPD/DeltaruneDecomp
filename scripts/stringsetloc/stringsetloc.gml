function stringsetloc(arg0, arg1)
{
	var str = arg0;
	if (!is_english())
		str = scr_84_get_lang_string(arg1);
	return stringset(str);
}
