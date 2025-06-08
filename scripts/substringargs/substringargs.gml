function substringargs(arg0, arg1, arg2)
{
	var str = arg0;
	var offset = arg1;
	var args = arg2;
	var sub_id = 1;
	var num_args = array_length_1d(args);
	var len = (num_args - offset) + 1;
	while (sub_id < len)
	{
		var sub = "~" + string(sub_id);
		var ndx = (sub_id + offset) - 1;
		str = string_replace_all(str, sub, args[ndx]);
		sub_id = sub_id + 1;
	}
	return str;
}
