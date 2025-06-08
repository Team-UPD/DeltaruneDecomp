function scr_cutscene_loadstate()
{
	scr_debug_print("Cutscene Loaded");
	for (var i = 0; i < 20; i++)
	{
		if (i_ex(actor_id[i]))
		{
			if (actorSaved[i] == 1)
			{
				with (actor_id[i])
					scr_instance_load_local_vars();
			}
		}
	}
	for (var i = 0; i < 10; i++)
	{
		if (i_ex(save_object[i]))
		{
			if (objectSaved[i] == 1)
			{
				with (save_object[i])
					scr_instance_load_local_vars();
			}
		}
	}
	for (var i = 0; i < array_length_1d(masterArray); i++)
		variable_instance_set(id, masterArray[i], myVar[i]);
	camerax_set(remCameraX);
	cameray_set(remCameraY);
	with (obj_panner)
		instance_destroy();
	with (obj_move_actor)
		instance_destroy();
	with (obj_move_to_point)
		instance_destroy();
	with (obj_shakeobj)
		instance_destroy();
	with (obj_shake)
		instance_destroy();
	with (obj_dialoguer)
		instance_destroy();
	with (obj_writer)
		instance_destroy();
	with (obj_face)
		instance_destroy();
	with (obj_cutscene_delaycmd)
		instance_destroy();
	with (obj_jump_to_point)
		instance_destroy();
	with (obj_stickto)
		instance_destroy();
	with (obj_lerpvar)
		instance_destroy();
	loadedState = 1;
	waiting = 0;
	scr_cutscene_master_commands_initialize();
}
