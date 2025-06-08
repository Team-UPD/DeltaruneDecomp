if (active == 1)
{
	if (fuelbubble)
	{
		if (target != 3)
			scr_heal(target, 6);
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
