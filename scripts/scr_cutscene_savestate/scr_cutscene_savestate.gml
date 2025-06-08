function scr_cutscene_savestate()
{
	scr_debug_print("Cutscene Saved");
	masterArray = variable_instance_get_names(id);
	for (var i = 0; i < array_length_1d(masterArray); i++)
		myVar[i] = variable_instance_get(id, masterArray[i]);
	remCameraX = camerax();
	remCameraY = cameray();
	for (var i = 0; i < 20; i++)
	{
		actorSaved[i] = 0;
		if (i_ex(actor_id[i]))
		{
			actorSaved[i] = 1;
			with (actor_id[i])
				scr_instance_save_local_vars();
		}
	}
	for (var i = 0; i < 10; i++)
	{
		objectSaved[i] = 0;
		if (i_ex(save_object[i]))
		{
			objectSaved[i] = 1;
			with (save_object[i])
				scr_instance_save_local_vars();
		}
	}
}
