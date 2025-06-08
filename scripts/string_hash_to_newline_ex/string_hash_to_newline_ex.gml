function string_hash_to_newline_ex(arg0)
{
	if (string_pos("`", arg0) > 0)
	{
		var __newstring = string_replace(arg0, "`#", "<hash>");
		__newstring = string_hash_to_newline(__newstring);
		return string_replace(__newstring, "<hash>", "#");
	}
	else
	{
		return string_hash_to_newline(arg0);
	}
}
