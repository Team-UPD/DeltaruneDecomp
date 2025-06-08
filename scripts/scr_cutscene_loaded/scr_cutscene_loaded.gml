function scr_cutscene_loaded()
{
	var __loadedState = 0;
	if (instance_exists(obj_cutscene_master))
	{
		if (obj_cutscene_master.loadedState == 1)
			__loadedState = 1;
	}
	return __loadedState;
}
