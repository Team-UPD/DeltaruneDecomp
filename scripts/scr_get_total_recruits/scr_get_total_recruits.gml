function scr_get_total_recruits()
{
	var totalrecruits = 0;
	var chapter = -1;
	var start_index = 0;
	var max_index = 100;
	if (argument_count > 0)
		chapter = argument[0];
	if (chapter == 2)
	{
		start_index = 30;
		max_index = 44;
	}
	for (var i = start_index; i < max_index; i++)
	{
		if (global.flag[i + 600] == 1)
			totalrecruits++;
	}
	return totalrecruits;
}
