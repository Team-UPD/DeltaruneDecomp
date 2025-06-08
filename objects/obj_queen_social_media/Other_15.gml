if (active == 1)
{
	if (handle)
	{
		if (target != 3)
			scr_bullet_heal(6);
		if (target == 3)
			scr_healall(6);
	}
	else
	{
		if (target != 3)
			scr_damage();
		if (target == 3)
			scr_damage_all();
	}
	if (destroyonhit == 1)
		instance_destroy();
}
