function c_saveload(arg0)
{
	if (scr_debug())
	{
		c_cmd("saveload", arg0, 0, 0, 0);
		if (arg0 == "save")
		{
			with (obj_cutscene_master)
			{
				if (loadedState == 1)
				{
					loadedState = 0;
					scr_cutscene_master_commands_initialize();
				}
			}
		}
	}
}
