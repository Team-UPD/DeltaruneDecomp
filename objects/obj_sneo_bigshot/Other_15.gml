if (sprite_index == spr_sneo_bigshot_l)
{
	playerhit = 1;
	event_user(0);
	with (obj_spamton_neo_enemy)
		event_user(2);
}
else if (sprite_index == spr_sneo_bigshot_s)
{
	if (active == 1)
	{
		with (obj_spamton_neo_enemy)
			event_user(2);
		if (destroyonhit == 1)
			instance_destroy();
	}
}
