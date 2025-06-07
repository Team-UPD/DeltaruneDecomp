function scr_84_add_menu_item()
{
	var list = argument[0];
	for (var i = 1; i < argument_count; i += 1)
		ds_list_add(list, argument[i]);
}
