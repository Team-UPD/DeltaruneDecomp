function scr_84_get_font(arg0)
{
	if (!variable_global_exists("chemg_last_get_font"))
		global.chemg_last_get_font = "";
	if (arg0 != global.chemg_last_get_font)
		global.chemg_last_get_font = arg0;
	return ds_map_find_value(global.font_map, arg0);
}
