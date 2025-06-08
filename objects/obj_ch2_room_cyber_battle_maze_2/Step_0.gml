if (northcon == 1)
{
	northcon = -1;
	layer_set_visible("TILES_Secret_North", false);
	snd_play(snd_locker);
	instance_create(0, 0, obj_shake);
	if (i_ex(northcollider))
		instance_destroy(northcollider);
}
if (southcon == 1)
{
	southcon = -1;
	layer_set_visible("TILES_Secret_South", false);
	snd_play(snd_locker);
	instance_create(0, 0, obj_shake);
	if (i_ex(southcollider))
		instance_destroy(southcollider);
}
