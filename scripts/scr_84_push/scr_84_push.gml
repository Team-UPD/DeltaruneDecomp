function scr_84_push()
{
	if (!variable_global_exists("chemg_stack"))
	{
		global.chemg_stack = array_create(0);
		global.chemg_stack[0] = 0;
	}
	var top_ndx = global.chemg_stack[0];
	for (var i = 0; i < argument_count; i += 1)
		global.chemg_stack[top_ndx + i + 1] = argument[i];
	global.chemg_stack[0] = top_ndx + argument_count;
}
