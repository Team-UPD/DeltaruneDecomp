function msgsetsub()
{
	var len = argument_count;
	var args;
	for (var i = 0; i < len; i++)
		args[i] = argument[i];
	var str = substringargs(argument[1], 2, args);
	msgset(argument[0], str);
}
