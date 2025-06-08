function msgsetsubloc()
{
	var len = argument_count;
	var args;
	for (var i = 0; i < len; i++)
		args[i] = argument[i];
	var msg_index = argument[0];
	var format_string = argument[1];
	var localized_format_string_id = argument[len - 1];
	if (!is_english())
		format_string = scr_84_get_lang_string(localized_format_string_id);
	var str = substringargs(format_string, 2, args);
	msgset(msg_index, str);
}
