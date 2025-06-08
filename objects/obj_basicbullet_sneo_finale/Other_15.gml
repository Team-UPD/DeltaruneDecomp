if (active == 1)
{
	if (target != 3)
		scr_damage_proportional();
	if (target == 3)
		scr_damage_all();
	if (destroyonhit == 1)
		instance_destroy();
}
