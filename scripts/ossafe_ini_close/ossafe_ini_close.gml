function ossafe_ini_close()
{
	if (!global.is_console)
	{
		return ini_close();
	}
	else if (!is_undefined(global.current_ini))
	{
		ds_map_set(global.savedata, global.current_ini, ini_close());
		global.current_ini = undefined;
	}
}
