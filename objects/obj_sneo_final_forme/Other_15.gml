if (active == 1)
{
	with (obj_spamton_neo_enemy)
		event_user(2);
	if (destroyonhit == 1)
		instance_destroy();
}
