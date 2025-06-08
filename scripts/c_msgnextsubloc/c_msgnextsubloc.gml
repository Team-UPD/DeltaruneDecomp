function c_msgnextsubloc()
{
	var len = argument_count;
	var args;
	for (var i = 0; i < len; i++)
		args[i] = argument[i];
	var format_string = argument[0];
	var localized_string_id = argument[len - 1];
	if (!is_english())
		format_string = scr_84_get_lang_string(localized_string_id);
	var str = substringargs(format_string, 1, args);
	c_msgnext(str);
}
