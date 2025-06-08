if (toggled == 0)
{
	snd_play(snd_won);
	toggled = 1;
	if (instance_exists(obj_controller_dw_mansion_bridges_funny))
		obj_controller_dw_mansion_bridges_funny.spawnVaseTrig = 1;
}
